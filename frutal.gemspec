# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'frutal/version'

Gem::Specification.new do |spec|
  spec.name          = "frutal"
  spec.version       = Frutal::VERSION
  spec.authors       = ["alu0100777758"]
  spec.email         = ["alu0100777758@ull.edu.es"]
  spec.summary       = %q{"simulador de arboles frutales"}
  spec.description   = %q{"permite simular el crecimiento de un arbol"}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~>2.11'
end
