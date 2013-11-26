# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'usno/version'

Gem::Specification.new do |spec|
  spec.name          = "usno"
  spec.version       = USNO::VERSION
  spec.authors       = ["Ryan T. Hosford"]
  spec.email         = ["tad.hosford@gmail.com"]
  spec.description   = %q{The base USNO gem provides a namespace for other USNO::* gems.}
  spec.summary       = %q{The base USNO gem provides a namespace for other USNO::* gems.}
  spec.homepage      = "http://github.com/rthbound/usno"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  # USNO Gems:
  spec.add_runtime_dependency     "usno-imagery"
  spec.add_runtime_dependency     "usno-transit"
  spec.add_runtime_dependency     "usno-eclipse"
end
