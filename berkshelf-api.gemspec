# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'berkshelf/api/version'

Gem::Specification.new do |spec|
  spec.name          = "berkshelf-api"
  spec.version       = Berkshelf::API::VERSION
  spec.authors       = ["Jamie Winsor"]
  spec.email         = ["reset@riotgames.com"]
  spec.description   = %q{Berkshelf dependency API server}
  spec.summary       = %q{A server which indexes cookbooks from various sources and hosts the index over a REST API}
  spec.homepage      = "https://github.com/RiotGames/berkshelf-api"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 1.9.2"

  spec.add_dependency 'ridley', '>= 0.11.0'
  spec.add_dependency 'celluloid'
  spec.add_dependency 'celluloid-io', '= 0.13.0'
  spec.add_dependency 'reel'
  spec.add_dependency 'grape', '>= 0.3.2'
  spec.add_dependency 'multi_json', '>= 1.0.4'
  spec.add_dependency 'hashie', '>= 2.0.4'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'thor', '~> 0.18.0'
end