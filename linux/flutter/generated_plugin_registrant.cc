//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <hello_devsecit/hello_devsecit_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) hello_devsecit_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "HelloDevsecitPlugin");
  hello_devsecit_plugin_register_with_registrar(hello_devsecit_registrar);
}
