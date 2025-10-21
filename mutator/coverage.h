#pragma once
#include <map>
#include <string>

// Coverage function declarations
double get_coverage_percent(const std::string &binary, const std::string &profdata, const std::string &filter_lib);
std::map<std::string, double> extract_totals(const std::string &binary, const std::string &profdata);

// Other external functions
extern "C" void ensure_coverage_registration();
extern "C" void flush_llvm_coverage();
extern "C" bool merge_coverage_profiles();
