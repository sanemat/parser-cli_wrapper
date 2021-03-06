# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parser/cli_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = 'parser-cli_wrapper'
  spec.version       = Parser::CliWrapper::VERSION
  spec.authors       = ['sanemat']
  spec.email         = ['o.gata.ken@gmail.com']
  spec.summary       = 'Enable stdin with ruby-parse'
  spec.description   = 'Replace "-" with STDIN like unix option.'
  spec.homepage      = 'https://github.com/sanemat/parser-cli_wrapper'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'parser', '>= 2.2.0.pre.8', '< 3.0'
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
