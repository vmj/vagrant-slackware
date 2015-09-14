# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant/slackware/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-slackware"
  spec.version       = Vagrant::Slackware::VERSION
  spec.authors       = ["Mikko Värri"]
  spec.email         = ["vmj@linuxbox.fi"]

  spec.summary       = %q{Slackware guest support for Vagrant.}
  spec.description   = %q{Adds Slackware guest detection and capabilities.}
  spec.homepage      = "https://github.com/vmj/vagrant-slackware"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
