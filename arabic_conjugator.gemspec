# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arabic_conjugator/version'

Gem::Specification.new do |spec|
  spec.name          = "arabic_conjugator"
  spec.version       = ArabicConjugator::VERSION
  spec.authors       = ["Anne Willborn"]
  spec.email         = ["awillborn@gmail.com"]
  spec.summary       = %q{Conjugate MSA verbs}
  spec.homepage      = ""
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
