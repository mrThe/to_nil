# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'to_nil/version'

Gem::Specification.new do |spec|
  spec.name          = "mr_to_nil"
  spec.version       = ToNil::VERSION
  spec.authors       = ["mr.The"]
  spec.email         = ["me@mrthe.name"]

  spec.summary       = "This a gem for cast any object to nil"
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/mrThe/to_nil"
  spec.license       = "WTFPL"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
