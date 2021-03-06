# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hannya/version'

Gem::Specification.new do |spec|
  spec.name          = "hannya"
  spec.version       = Hannya::VERSION
  spec.authors       = ["Jeremy Cronk"]
  spec.email         = ["jcronk@nxtechcorp.com"]
  spec.summary       = %q{A data access layer}
  spec.description   = %q{Hannya provides a simple interface to XML or nested hashes, or potentially other data formats.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "nokogiri"
  spec.add_runtime_dependency "json"
end
