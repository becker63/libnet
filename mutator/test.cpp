// mutator/test.cpp
#include <cstdlib>
#include <string>
#include <memory>
#include <iostream>
#include <chrono>
#include "raw.pb.h"
#include "src/libfuzzer/libfuzzer_macro.h"

// Nim harness entrypoint
extern "C" int run_from_pb(const uint8_t *data, size_t len);

// Prometheus exporter
#include <prometheus/exposer.h>
#include <prometheus/registry.h>
#include <prometheus/counter.h>
#include <prometheus/gauge.h>

using namespace prometheus;

// ----------------------------------------------------------------------------
// Prometheus setup (runs once globally)
// ----------------------------------------------------------------------------
namespace {

auto registry = std::make_shared<Registry>();

// Families
auto& fuzz_execs_family = BuildCounter()
    .Name("fuzz_executions_total")
    .Help("Number of fuzz inputs processed")
    .Register(*registry);

auto& crash_family = BuildCounter()
    .Name("fuzz_crashes_total")
    .Help("Number of fuzz crashes triggered by harness")
    .Register(*registry);

auto& exec_speed_family = BuildGauge()
    .Name("fuzzer_execs_per_sec")
    .Help("Execution speed (exec/s)")
    .Register(*registry);

auto& corpus_family = BuildGauge()
    .Name("fuzzer_corpus_size")
    .Help("Approximate corpus size observed")
    .Register(*registry);

// Actual metric instances (children)
auto& fuzz_execs = fuzz_execs_family.Add({});
auto& crash_counter = crash_family.Add({});
auto& exec_speed = exec_speed_family.Add({});
auto& corpus_size = corpus_family.Add({});

// -----------------------------------------------------------------------------
// Exposer thread (HTTP server for Prometheus)
// -----------------------------------------------------------------------------
struct MetricsInit {
  std::unique_ptr<Exposer> exposer;

  MetricsInit() {
    try {
      exposer = std::make_unique<Exposer>("0.0.0.0:8080");
      exposer->RegisterCollectable(registry);
      std::cerr << "[metrics] ✅ Prometheus exposer listening on 0.0.0.0:8080\n";
    } catch (const std::exception& e) {
      std::cerr << "[metrics] ❌ Failed to start exposer: " << e.what() << "\n";
    } catch (...) {
      std::cerr << "[metrics] ❌ Unknown error starting exposer.\n";
    }
  }
};

// Ensures server starts once at program startup
MetricsInit metrics_init;

} // namespace

// ----------------------------------------------------------------------------
// Optional LPM PostProcessor: ensures minimal valid protobuf input
// ----------------------------------------------------------------------------
template <class Proto>
using PostProcessor =
    protobuf_mutator::libfuzzer::PostProcessorRegistration<Proto>;

static PostProcessor<Top> ensure_seed = {
  [](Top* m, unsigned int) {
    if (m->tables_size() == 0) {
      auto* t = m->add_tables();
      t->set_family(2);
      t->set_name("seed");
    }
  }
};

// ----------------------------------------------------------------------------
// Main Fuzzer Entry
// ----------------------------------------------------------------------------
DEFINE_PROTO_FUZZER(const Top& in) {
  using namespace std::chrono;

  static auto last_time = steady_clock::now();
  static double last_execs = 0;
  static double total_execs = 0;

  fuzz_execs.Increment();
  total_execs += 1.0;

  // Compute execs/sec every N iterations
  if (fmod(total_execs, 1000.0) == 0) {
    auto now = steady_clock::now();
    auto dt = duration_cast<duration<double>>(now - last_time).count();
    if (dt > 0.0) {
      double eps = (total_execs - last_execs) / dt;
      exec_speed.Set(eps);
      last_execs = total_execs;
      last_time = now;
    }
  }

  // Simulate corpus size observation (if you have it available)
  // e.g., if your Nim harness tracks corpus growth:
  // corpus_size.Set(getCorpusSize());
  corpus_size.Set(std::max(corpus_size.Value(), total_execs / 1000.0));

  std::string serialized;
  Top msg = in;

  if (msg.tables_size() == 0) {
    auto* t = msg.add_tables();
    t->set_family(2);
    t->set_name("seed");
  }

  if (!msg.SerializeToString(&serialized)) return;
  if (serialized.empty()) return;

  int res = run_from_pb(reinterpret_cast<const uint8_t*>(serialized.data()),
                        serialized.size());
  if (res < 0)
    crash_counter.Increment();
}
