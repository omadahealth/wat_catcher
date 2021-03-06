# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wat_catcher/version'

Gem::Specification.new do |spec|
  spec.name          = "wat_catcher"
  spec.version       = WatCatcher::VERSION
  spec.authors       = ["Chris Constantine"]
  spec.email         = ["cconstan@gmail.com"]
  spec.description   = %q{Catch your wats}
  spec.summary       = %q{A gem for registering Wats from your rails app}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "jasmine"
  spec.add_development_dependency "guard-coffeescript"
  spec.add_development_dependency "rb-readline"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "sqlite3"

  spec.add_runtime_dependency     'coffee-rails'
  spec.add_runtime_dependency     'rails', '>= 4.2.0'
  spec.add_runtime_dependency     'httpclient'
  spec.add_runtime_dependency     'statsd-ruby'
end
