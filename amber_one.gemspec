# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'amber_one/version'

Gem::Specification.new do |spec|
  spec.name          = "amber_one"
  spec.version       = AmberOne::VERSION
  spec.authors       = ["saurabh goel"]
  spec.email         = ["saurabh.goel@getamber.in"]

  spec.summary       = %q{Gem for Amber. Single gem for cross platform functionality.}
  spec.description   = %q{Adds features like common assets, authorization, configurations etc.}
  spec.homepage      = "http://www.getamber.in"
  spec.license       = "MIT"

  spec.files         = Dir["README.md","Gemfile","Rakefile","spec/*","{lib,vendor}/**/*"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end
  
  # spec.add_dependency "rails", ">= 4.0.2"
  # these gems are needed only in development to bundle the gem and run tests using rake
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
