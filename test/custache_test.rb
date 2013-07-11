require_relative 'test_helper'
require 'custache'

describe Custache do
  it 'works like mustache!' do
    template = <<-EOF
      Hello {{name}}
      You have just won €{{value}}!
      {{#in_ie}}
      Well, €{{taxed_value}}, after taxes.
      {{/in_ie}}
    EOF

    hash = {
      name: "JJ",
      value: 10000,
      taxed_value: 10000 - (10000 * 0.56),
      in_ie: true
    }

    Custache.render(template, hash).must_equal <<-EOF
      Hello JJ
      You have just won €10000!
      Well, €4400, after taxes.
    EOF
  end
end
