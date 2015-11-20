# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inkmonk/api/version'

Gem::Specification.new do |spec|
  spec.name          = "inkmonk-api"
  spec.version       = Inkmonk::Api::VERSION
  spec.authors       = ["ShenbagaPrasanna"]
  spec.email         = ["shenbagaprasanna@gmail.com"]

  spec.summary       = %q{Ruby Gem for Inkmonk's Sticky Stamp API}
  spec.description   = %q{The API is hosted at https://api.stickystamp.com. Using our API you can integrate merchandise delivery deep into your workflow. The API is kept as minimal as possible and the various hooks and endpoints are provided in a way that they can be used in a variety of use cases - customer loyalty programs, campaigns, employee rewards etc.}
  spec.homepage      = "https://github.com/praserocking/inkmonk-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
