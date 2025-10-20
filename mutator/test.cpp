#include "elaborate.pb.h"
#include "src/libfuzzer/libfuzzer_macro.h"

#include <chrono>
#include <cmath>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <fcntl.h>
#include <sys/file.h>
#include <unistd.h>

// Nim harness entrypoint
extern "C" int run_from_pb(const uint8_t *data, size_t len);

// Prometheus exporter
#include <prometheus/counter.h>
#include <prometheus/exposer.h>
#include <prometheus/gauge.h>
#include <prometheus/registry.h>

// Sanitizer coverage interface (for live coverage metrics)
#include <sanitizer/coverage_interface.h>

// --- Coverage API (weak declarations for Clang sanitizer runtime) ---
extern "C" {
__attribute__((weak)) size_t __sanitizer_get_total_unique_coverage(void);
__attribute__((weak)) size_t __sanitizer_get_total_coverage(void);
__attribute__((weak)) size_t __sanitizer_get_number_of_counters(void);
}

using namespace prometheus;

// ----------------------------------------------------------------------------
// File lock–based Prometheus port allocator
// ----------------------------------------------------------------------------
static int get_next_available_port() {
  const int base_port = 8080;
  const char *lock_path = "/tmp/fuzz_port.lock";
  const char *index_path = "/tmp/fuzz_port.index";

  int lock_fd = open(lock_path, O_CREAT | O_RDWR, 0666);
  if (lock_fd < 0) {
    perror("open(lock)");
    return base_port;
  }

  // exclusive lock for atomic port assignment
  if (flock(lock_fd, LOCK_EX) != 0) {
    perror("flock");
    close(lock_fd);
    return base_port;
  }

  int port_offset = 0;
  {
    std::ifstream in(index_path);
    if (in.good())
      in >> port_offset;
  }

  int next_offset = port_offset + 1;
  {
    std::ofstream out(index_path, std::ios::trunc);
    out << next_offset;
  }

  flock(lock_fd, LOCK_UN);
  close(lock_fd);

  return base_port + port_offset;
}

// ----------------------------------------------------------------------------
// Prometheus setup
// ----------------------------------------------------------------------------
namespace {

auto registry = std::make_shared<Registry>();

// Metric families
auto &fuzz_execs_family = BuildCounter().Name("fuzz_executions_total").Help("Number of fuzz inputs processed").Register(*registry);
auto &crash_family = BuildCounter().Name("fuzz_crashes_total").Help("Number of fuzz crashes triggered by harness").Register(*registry);
auto &exec_speed_family = BuildGauge().Name("fuzzer_execs_per_sec").Help("Execution speed (exec/s)").Register(*registry);
auto &corpus_family = BuildGauge().Name("fuzzer_corpus_size").Help("Approximate corpus size observed").Register(*registry);
auto &unique_cov_family = BuildGauge().Name("fuzzer_coverage_unique_edges").Help("Unique code coverage edges discovered").Register(*registry);
auto &total_cov_family = BuildGauge().Name("fuzzer_coverage_total_edges").Help("Total executed code coverage edges (including repeats)").Register(*registry);
auto &coverage_points_family = BuildGauge().Name("fuzzer_coverage_instrumented_points").Help("Number of instrumented coverage points").Register(*registry);

// Actual metric instances
auto &fuzz_execs = fuzz_execs_family.Add({});
auto &crash_counter = crash_family.Add({});
auto &exec_speed = exec_speed_family.Add({});
auto &corpus_size = corpus_family.Add({});
auto &unique_cov = unique_cov_family.Add({});
auto &total_cov = total_cov_family.Add({});
auto &coverage_points = coverage_points_family.Add({});

// -----------------------------------------------------------------------------
// Exposer thread (HTTP server for Prometheus)
// -----------------------------------------------------------------------------
struct MetricsInit {
  std::unique_ptr<Exposer> exposer;
  MetricsInit() {
    try {
      int port = get_next_available_port();
      std::string address = "0.0.0.0:" + std::to_string(port);

      exposer = std::make_unique<Exposer>(address);
      exposer->RegisterCollectable(registry);
      std::cerr << "[metrics] ✅ Prometheus exposer listening on " << address << "\n";
    } catch (const std::exception &e) {
      std::cerr << "[metrics] ❌ Failed to start exposer: " << e.what() << "\n";
    } catch (...) {
      std::cerr << "[metrics] ❌ Unknown error starting exposer.\n";
    }
  }
};

static MetricsInit metrics_init;

} // namespace

// ----------------------------------------------------------------------------
// Optional LPM PostProcessor
// ----------------------------------------------------------------------------
template <class Proto>
using PostProcessor = protobuf_mutator::libfuzzer::PostProcessorRegistration<Proto>;

static PostProcessor<nftnl::Top> ensure_seed = {
    [](nftnl::Top *m, unsigned int) {
      if (m->tables_size() == 0) {
        auto *t = m->add_tables();
        t->set_family(2);
        t->set_name("seed");
      }
    }};

// ----------------------------------------------------------------------------
// Main Fuzzer Entry
// ----------------------------------------------------------------------------
DEFINE_PROTO_FUZZER(const nftnl::Top &in) {
  using namespace std::chrono;

  static auto last_metrics = steady_clock::now();
  static auto last_time = steady_clock::now();
  static double last_execs = 0;
  static double total_execs = 0;

  fuzz_execs.Increment();
  total_execs += 1.0;

  // Update metrics every ~250ms
  auto now = steady_clock::now();
  if (duration_cast<duration<double>>(now - last_metrics).count() >= 0.25) {
    double dt = duration_cast<duration<double>>(now - last_time).count();
    if (dt > 0.0) {
      double eps = (total_execs - last_execs) / dt;
      exec_speed.Set(eps);
      last_execs = total_execs;
      last_time = now;
    }

    size_t uniq = __sanitizer_get_total_unique_coverage ? __sanitizer_get_total_unique_coverage() : 0;
    size_t tot = __sanitizer_get_total_coverage ? __sanitizer_get_total_coverage() : 0;
    size_t pts = __sanitizer_get_number_of_counters ? __sanitizer_get_number_of_counters() : 0;

    unique_cov.Set(uniq);
    total_cov.Set(tot);
    coverage_points.Set(pts);

    std::ofstream out("/tmp/fuzz_coverage.json", std::ios::trunc);
    if (out.is_open())
      out << "{\"unique_edges\": " << uniq << ", \"total_edges\": " << tot
          << ", \"instrumented_points\": " << pts << "}\n";

    last_metrics = now;
  }

  corpus_size.Set(std::max(corpus_size.Value(), total_execs / 1000.0));

  std::string serialized;
  nftnl::Top msg = in;
  if (msg.tables_size() == 0) {
    auto *t = msg.add_tables();
    t->set_family(2);
    t->set_name("seed");
  }

  if (!msg.SerializeToString(&serialized) || serialized.empty())
    return;

  int res = run_from_pb(reinterpret_cast<const uint8_t *>(serialized.data()), serialized.size());
  if (res < 0)
    crash_counter.Increment();
}
