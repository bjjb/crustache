#include <ruby.h>

static VALUE custache_render(VALUE self, VALUE template, VALUE view) {
  return rb_str_new2(template);
}

void Init_custache(void) {
  VALUE module = rb_define_module("Custache");
  rb_define_singleton_method(module, "render", custache_render, 2);
}
