// mutator/test.cpp
#include <cstdlib>
#include <string>
#include "raw.pb.h"
#include "src/libfuzzer/libfuzzer_macro.h"

extern "C" int run_from_pb(const uint8_t *data, size_t len);

// If you want stronger guidance from LPM as it mutates, you can also add:
template <class Proto>
using PostProcessor =
    protobuf_mutator::libfuzzer::PostProcessorRegistration<Proto>;

// Ensure we often have at least one table; LPM can still mutate freely.
static PostProcessor<Top> ensure_seed = {
  [](Top* m, unsigned int) {
    if (m->tables_size() == 0) {
      auto* t = m->add_tables();
      t->set_family(2);
      t->set_name("seed");        // harmless name; not your crash trigger
      // (You can also add a minimal chain/rule/expr here if you like.)
    }
  }
};

DEFINE_PROTO_FUZZER(const Top& in) {
  std::string serialized;
  // Serialize the possibly-postprocessed message.
  Top msg = in;
  if (msg.tables_size() == 0) {       // belt & suspenders in case PP didn't run
    auto* t = msg.add_tables();
    t->set_family(2);
    t->set_name("seed");
  }
  if (!msg.SerializeToString(&serialized)) return;
  if (serialized.empty()) return;     // shouldn't happen now
  run_from_pb(reinterpret_cast<const uint8_t*>(serialized.data()),
              serialized.size());
}
