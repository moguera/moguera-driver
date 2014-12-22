# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'moguera/driver/version'

Gem::Specification.new do |spec|
  spec.name          = "moguera-driver"
  spec.version       = Moguera::Driver::VERSION
  spec.authors       = ["hiro-su"]
  spec.email         = ["h.sugipon@gmail.com"]
  spec.summary       = %q{moguera driver}
  spec.description   = %q{moguera driver}
  spec.homepage      = "https://github.com/moguera/moguera-driver"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor'
  spec.add_dependency 'rest-client'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
