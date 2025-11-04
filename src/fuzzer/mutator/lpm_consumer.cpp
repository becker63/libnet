#include "elaborate.pb.h"
#include "src/libfuzzer/libfuzzer_macro.h"
#include <string>
#include <cstdint>
#include <cstdlib>

// Nim harness entrypoint
extern "C" int run_from_pb(const uint8_t *data, size_t len);

// ---- LLVM profile runtime (flush / config) ----
extern "C" {
  void __llvm_profile_register_write_file_atexit(void);
  int  __llvm_profile_write_file(void);
  void __llvm_profile_set_filename(const char *);
  void __llvm_profile_enable_continuous_mode(void); // optional
}

// (optional) sanitizer coverage symbols
extern "C" {
__attribute__((weak)) size_t __sanitizer_get_total_unique_coverage(void);
__attribute__((weak)) size_t __sanitizer_get_total_coverage(void);
__attribute__((weak)) size_t __sanitizer_get_number_of_counters(void);
}

// libFuzzer init hook
extern "C" int LLVMFuzzerInitialize(int *argc, char ***argv) {
  (void)argc; (void)argv;

  // Ensure the runtime knows where to write (use env if set)
  if (const char* p = std::getenv("LLVM_PROFILE_FILE")) {
    __llvm_profile_set_filename(p);
  }

  // Safer on abnormal exits; cheap to enable
  __llvm_profile_enable_continuous_mode();

  // Make sure we flush on normal exit
  __llvm_profile_register_write_file_atexit();
  return 0;
}

// protobuf-mutator postprocessor (unchanged)
template <class Proto>
using PostProcessor = protobuf_mutator::libfuzzer::PostProcessorRegistration<Proto>;

static PostProcessor<nftnl::Top> ensure_seed = {
  [](nftnl::Top *m, unsigned int) {
    if (m->tables_size() == 0) {
      auto *t = m->add_tables();
      t->set_family(2);
      t->set_name("seed");
    }
  }
};

// Fuzz target (unchanged)
DEFINE_PROTO_FUZZER(const nftnl::Top &in) {
  std::string serialized;
  if (!in.SerializeToString(&serialized) || serialized.empty())
    return;

  run_from_pb(reinterpret_cast<const uint8_t *>(serialized.data()),
              serialized.size());
}
