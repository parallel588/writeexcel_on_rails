# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'writeexcel_on_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "writeexcel_on_rails"
  spec.version       = WriteexcelOnRails::VERSION
  spec.authors       = ["Maxim Pechnikov"]
  spec.email         = ["parallel588@gmail.com"]
  spec.description   = "A gem to generate xls documents by using templates."
  spec.summary       = "Support for XLS based views"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.0.1"
  spec.add_dependency  "writeexcel", "~> 1.0.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
