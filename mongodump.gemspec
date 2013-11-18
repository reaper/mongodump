# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongodump/version'

Gem::Specification.new do |spec|
  spec.name          = "mongodump"
  spec.version       = Mongodump::VERSION
  spec.authors       = ["Pierre FILSTROFF"]
  spec.email         = ["pfilstroff@gmail.com"]
  spec.description   = %q{Mongodump dump the remote mongolab or mongohq databases and fetch data to the local database}
  spec.summary       = %q{Mongo db dump to local database}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("colorize", ">= 0.5.8")

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "mongo"
  spec.add_development_dependency "bson_ext"
  spec.add_development_dependency "debugger"
  spec.add_development_dependency "colorize"
end
