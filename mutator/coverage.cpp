#include "semlock.h"  // ✅ lightweight semaphore RAII wrapper

#include <chrono>
#include <cstdlib>
#include <ctime>
#include <dlfcn.h>
#include <filesystem>
#include <iostream>
#include <link.h>
#include <map>
#include <string>
#include <unistd.h>
#include <vector>

namespace fs = std::filesystem;

// ────────────────────────────────────────────────────────────────
// Utility: check string prefix
// ────────────────────────────────────────────────────────────────
static bool has_prefix(const std::string &s, const std::string &p) {
#if __cpp_lib_starts_ends_with >= 201907L
  return s.starts_with(p);
#else
  return s.rfind(p, 0) == 0;
#endif
}

// ────────────────────────────────────────────────────────────────
// Flush in-memory coverage counters → /tmp/fuzz-<pid>-<timestamp>.profraw
// ────────────────────────────────────────────────────────────────
extern "C" void flush_llvm_coverage() {
  using Fn = void (*)();
  Fn fn = (Fn)dlsym(RTLD_DEFAULT, "__llvm_profile_flush_file");
  if (!fn)
    fn = (Fn)dlsym(RTLD_DEFAULT, "__llvm_profile_write_file");

  if (fn) {
    auto now = std::chrono::system_clock::now().time_since_epoch().count();
    const std::string new_path = "/tmp/fuzz-" + std::to_string(getpid()) +
                                 "-" + std::to_string(now) + ".profraw";
    setenv("LLVM_PROFILE_FILE", new_path.c_str(), /*overwrite=*/1);
    fn();
    std::cerr << "[cov] 💾 flushed to " << new_path << "\n";
  } else {
    std::cerr << "[cov] ⚠️  no llvm_profile_* symbol found\n";
  }
}

// ────────────────────────────────────────────────────────────────
// Merge all /tmp/fuzz-<pid>-*.profraw → /tmp/merged-<pid>.profdata
// Each process maintains its own merged profile.
// ────────────────────────────────────────────────────────────────
extern "C" bool merge_coverage_profiles() {
  AutoSemLock lock("/fuzz_merge_sem");  // ✅ ensure only one process merges
  if (!lock.owns_lock()) {
    std::cerr << "[cov] ⏳ merge skipped (another process is merging)\n";
    return false;
  }

  const pid_t pid = getpid();
  std::vector<std::string> inputs;

  for (auto &p : fs::directory_iterator(fs::path("/tmp"))) {
    const auto &path = p.path();
    if (path.extension() == ".profraw" &&
        has_prefix(path.filename().string(), "fuzz-" + std::to_string(pid) + "-")) {
      inputs.push_back(path.string());
    }
  }

  if (inputs.empty()) {
    std::cerr << "[cov] ⚠️ no profraw files found for pid " << pid << "\n";
    return false;
  }

  std::cerr << "[cov] ✅ merged " << inputs.size() << " profiles for pid " << pid << "\n";
  return true;
}
