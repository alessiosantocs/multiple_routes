# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'multiple_routes/version'

Gem::Specification.new do |spec|
  spec.name          = "multiple_routes"
  spec.version       = MultipleRoutes::VERSION
  spec.authors       = ["Alessio Santo"]
  spec.email         = ["alessio.santo@pazienti.it"]
  spec.description   = %q{A deploy tracker}
  spec.summary       = %q{A deploy tracker}
  spec.homepage      = "https://github.com/alessiosantocs/multiple_routes"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]


  spec.add_development_dependency "bundler", "~> 1.3"
end

