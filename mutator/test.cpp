#include "elaborate.pb.h"
#include "src/libfuzzer/libfuzzer_macro.h"

#include <chrono>
#include <cmath>
#include <cstdlib>
#include <fcntl.h>
#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <thread>
#include <unistd.h>
#include <cstdio>
#include <array>

extern "C" int run_from_pb(const uint8_t *data, size_t len);

#include <prometheus/counter.h>
#include <prometheus/exposer.h>
#include <prometheus/gauge.h>
#include <prometheus/registry.h>

#include "semlock.h"  // ✅ semaphore RAII wrapper

using namespace prometheus;
namespace fs = std::filesystem;

// ──────────────────────────────────────────────────────────────
// 🔹 Global state
// ──────────────────────────────────────────────────────────────
static std::shared_ptr<Registry> registry;
static std::shared_ptr<Exposer> exposer;

// ──────────────────────────────────────────────────────────────
// 🔹 HTTP Metrics server initialization
// ──────────────────────────────────────────────────────────────
static Counter* fuzz_execs;
static Counter* crash_counter;
static Gauge* exec_speed;
static Gauge* corpus_size;

static void ensure_metrics_init() {
    static bool once = false;
    if (once)
        return;
    once = true;

    registry = std::make_shared<Registry>();

    const int base_port = 8080;
    const char *index_path = "/tmp/fuzz_port.index";

    int port_offset = 0;
    try {
        AutoSemLock lock("/fuzz_port_sem");
        std::ifstream in(index_path);
        if (in.good())
            in >> port_offset;
        int next_offset = port_offset + 1;
        std::ofstream out(std::string(index_path) + ".tmp", std::ios::trunc);
        out << next_offset;
        out.close();
        rename((std::string(index_path) + ".tmp").c_str(), index_path);
    } catch (...) {
        std::cerr << "[metrics] ⚠️ semaphore failed, falling back to base port\n";
    }

    int port = base_port + port_offset;
    std::string addr = "0.0.0.0:" + std::to_string(port);

    exposer = std::make_shared<Exposer>(addr);
    exposer->RegisterCollectable(registry);
    std::cerr << "[metrics] ✅ Prometheus exposer listening on " << addr << "\n";
}

// ──────────────────────────────────────────────────────────────
// 🔹 Metric families (registered after init)
// ──────────────────────────────────────────────────────────────
static void setup_metric_handles() {
    if (fuzz_execs)
        return; // already done

    ensure_metrics_init();

    auto &fuzz_execs_family = BuildCounter()
        .Name("fuzz_executions_total")
        .Help("Total fuzz inputs processed")
        .Register(*registry);

    auto &crash_family = BuildCounter()
        .Name("fuzz_crashes_total")
        .Help("Number of fuzz crashes")
        .Register(*registry);

    auto &exec_speed_family = BuildGauge()
        .Name("fuzzer_execs_per_sec")
        .Help("Execution speed")
        .Register(*registry);

    auto &corpus_family = BuildGauge()
        .Name("fuzzer_corpus_size")
        .Help("Corpus size estimate")
        .Register(*registry);

    std::string core = std::to_string(getpid() % std::max(1u, std::thread::hardware_concurrency()));

    fuzz_execs = &fuzz_execs_family.Add({{"core", core}});
    crash_counter = &crash_family.Add({{"core", core}});
    exec_speed = &exec_speed_family.Add({{"core", core}});
    corpus_size = &corpus_family.Add({{"core", core}});
}

// ──────────────────────────────────────────────────────────────
// 🔹 libFuzzer initialization hook
// ──────────────────────────────────────────────────────────────
extern "C" int LLVMFuzzerInitialize(int *argc, char ***argv) {
    (void)argc;
    (void)argv;
    ensure_metrics_init();  // ✅ Initialize Prometheus metrics
    return 0;
}

// ──────────────────────────────────────────────────────────────
// 🔹 Fuzzer entrypoint — Metrics tracking + periodic execution
// ──────────────────────────────────────────────────────────────
DEFINE_PROTO_FUZZER(const nftnl::Top &in) {
    using namespace std::chrono;
    setup_metric_handles();

    static auto last_metrics = steady_clock::now();
    static double last_execs = 0.0, total_execs = 0.0;

    fuzz_execs->Increment();
    total_execs++;

    // Update execution speed and corpus size every 250ms
    auto now = steady_clock::now();
    double dt = duration_cast<duration<double>>(now - last_metrics).count();
    if (dt > 0.25) {
        exec_speed->Set((total_execs - last_execs) / dt);
        last_execs = total_execs;
        last_metrics = now;
        corpus_size->Set(std::max(corpus_size->Value(), total_execs / 1000.0));
    }

    // Serialize + hand to Nim harness
    std::string serialized;
    nftnl::Top msg = in;
    if (msg.tables_size() == 0) {
        auto *t = msg.add_tables();
        t->set_family(2);
        t->set_name("seed");
    }

    if (!msg.SerializeToString(&serialized) || serialized.empty())
        return;

    int res = run_from_pb(reinterpret_cast<const uint8_t *>(serialized.data()),
                          serialized.size());
    if (res < 0)
        crash_counter->Increment();
}
