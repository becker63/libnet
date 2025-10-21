#include "elaborate.pb.h"
#include "src/libfuzzer/libfuzzer_macro.h"

#include <chrono>
#include <iostream>
#include <string>
#include <thread>
#include <filesystem>
#include <unistd.h>

// ────────────────────────────────────────────────
// 🔹 External hooks provided by Nim
// ────────────────────────────────────────────────
extern "C" int run_from_pb(const uint8_t *data, size_t len);
extern "C" void ensureCoverageRegistration();
extern "C" void flushCoverage();

// 🔹 LLVM coverage runtime
extern "C" int __llvm_profile_initialize_file(void);
extern "C" int __llvm_profile_write_file(void);

using namespace std::chrono;

// ────────────────────────────────────────────────
// 🔹 Coverage initialization constructor
// ────────────────────────────────────────────────
static void __attribute__((constructor)) init_coverage_runtime() {
  setenv("LLVM_PROFILE_FILE", "/tmp/fuzz-%p.profraw", 1);
  std::cerr << "[cov] 🧩 Initializing LLVM coverage runtime\n";
  __llvm_profile_initialize_file();
}

// ────────────────────────────────────────────────
// 🔹 Register coverage for instrumented libs
// ────────────────────────────────────────────────
static void preload_instrumented_libs() {
  std::cerr << "[cov] 🧩 Ensuring coverage registration via Nim\n";
  ensureCoverageRegistration();
}

// ────────────────────────────────────────────────
// 🔹 libFuzzer init hook
// ────────────────────────────────────────────────
extern "C" int LLVMFuzzerInitialize(int *argc, char ***argv) {
  (void)argc;
  (void)argv;
  preload_instrumented_libs();
  return 0;
}

// ────────────────────────────────────────────────
// 🔹 Fuzzer body — just calls Nim handler
// ────────────────────────────────────────────────
DEFINE_PROTO_FUZZER(const nftnl::Top &in) {
  nftnl::Top msg = in;
  if (msg.tables_size() == 0) {
    auto *t = msg.add_tables();
    t->set_family(2);
    t->set_name("seed");
  }

  std::string serialized;
  if (!msg.SerializeToString(&serialized))
    return;

  int res = run_from_pb(reinterpret_cast<const uint8_t *>(serialized.data()),
                        serialized.size());
  if (res < 0)
    std::cerr << "[fuzz] crash return from Nim harness\n";

  static auto lastFlush = steady_clock::now();
  auto now = steady_clock::now();
  if (duration_cast<seconds>(now - lastFlush).count() > 5) {
    flushCoverage();
    __llvm_profile_write_file();  // ✅ ensure counters are dumped
    lastFlush = now;
  }
}
