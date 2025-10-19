// src/lpm_consumer_fuzz.cpp
// Minimal libprotobuf-mutator + libFuzzer example adapted for this repo.

#include <cmath>
#include <iostream>
#include <algorithm>
#include <string>
#include <functional>

#include "test.pb.h"                       // generated from schema/tree.proto
#include "port/protobuf.h"                 // from libprotobuf-mutator
#include "src/libfuzzer/libfuzzer_macro.h" // from libprotobuf-mutator

// PostProcessor registration helper
template <class Proto>
using PostProcessor =
    protobuf_mutator::libfuzzer::PostProcessorRegistration<Proto>;

// Example postprocessor for our Msg type
static PostProcessor<libfuzzer_example::Msg> reg1 = {
    [](libfuzzer_example::Msg* message, unsigned int seed) {
      // set a derived uint64 from the string to exercise correlated fields
      message->set_optional_uint64(
          std::hash<std::string>{}(message->optional_string()));
    }};

// Example postprocessor for google::protobuf::Any to bias types
static PostProcessor<google::protobuf::Any> reg2 = {
    [](google::protobuf::Any* any, unsigned int seed) {
      static const char* const expected_types[] = {
          "type.googleapis.com/google.protobuf.DescriptorProto",
          "type.googleapis.com/google.protobuf.FileDescriptorProto",
      };

      if (!std::count(std::begin(expected_types), std::end(expected_types),
                      any->type_url())) {
        const size_t num = (std::end(expected_types) - std::begin(expected_types));
        any->set_type_url(expected_types[seed % num]);
      }
    }};

DEFINE_PROTO_FUZZER(const libfuzzer_example::Msg& message) {
  protobuf_mutator::protobuf::FileDescriptorProto file;

  // A contrived "crash-if" condition — useful as a simple oracle while bootstrapping.
  if (message.optional_uint64() ==
          std::hash<std::string>{}(message.optional_string()) &&
      message.optional_string() == "abcdefghijklmnopqrstuvwxyz" &&
      !std::isnan(message.optional_float()) &&
      std::fabs(message.optional_float()) > 1000 &&
      message.any().UnpackTo(&file) && !file.name().empty()) {
    std::cerr << message.DebugString() << "\n";
    abort();
  }
}
