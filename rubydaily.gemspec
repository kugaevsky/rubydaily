# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubydaily/version'

Gem::Specification.new do |spec|
  spec.name          = "rubydaily"
  spec.version       = Rubydaily::VERSION
  spec.authors       = ["Nick Kugaevsky"]
  spec.email         = ["nick@kugaevsky.ru"]
  spec.description   = %q{Ruby Daily sinatra based UI}
  spec.summary       = %q{Ruby Daily sinatra based UI}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.3"
  spec.add_dependency "rake"
  spec.add_dependency 'thor'
  spec.add_dependency 'slim'
  spec.add_dependency 'sinatra', "~> 1.4"
  spec.add_dependency 'puma'
  spec.add_dependency 'sass'
  spec.add_dependency 'coffee-script'
  spec.add_dependency 'capistrano'
  spec.add_dependency 'capistrano-rvm'
  spec.add_dependency 'capistrano-bundler'
  spec.add_dependency 'newrelic_rpm'
  spec.add_dependency 'tumblr_client'
  spec.add_dependency 'skylight'
end
