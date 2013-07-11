# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "custache"
  spec.version       = '0.0.1'
  spec.authors       = ["JJ Buckley"]
  spec.email         = ["jj@dawandamail.com"]
  spec.description   = %q{Mustache in C}
  spec.summary       = %q{A C (and Ruby) Mustache library}
  spec.homepage      = "http://github.com/bjjb/custache"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.extensions    = ['ext/custache/extconf.rb']
  spec.executables   = ['custache']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake-compiler"
end
