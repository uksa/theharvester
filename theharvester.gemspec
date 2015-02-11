# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'theharvester/version'

Gem::Specification.new do |spec|
  spec.name          = "theharvester"
  spec.version       = Theharvester::VERSION
  spec.authors       = ["Sam Treweek"]
  spec.email         = ["info@uksa.eu"]
  spec.summary       = %q{Harvest Links and API Calls}
  spec.description   = %q{Harvest information about a Site to discover API's and Links on a WebSite}
  spec.homepage      = "http://www.uksa.eu"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency 'rake', '~> 0'
end
