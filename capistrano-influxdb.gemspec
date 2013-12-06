# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/influxdb/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-influxdb"
  spec.version       = Capistrano::Influxdb::VERSION
  spec.authors       = ["Richard Lister"]
  spec.email         = ["rlister@gmail.com"]
  spec.description   = %q{Capistrano v3 task for reporting deploys to InfluxDB}
  spec.summary       = %q{Report deploys to InfluxDB}
  spec.homepage      = "http://github.com/rlister/capistrano-influxdb"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_development_dependency 'influxdb'
end
