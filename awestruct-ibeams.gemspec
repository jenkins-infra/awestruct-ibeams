# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awestruct/ibeams/version'

Gem::Specification.new do |spec|
  spec.name          = "awestruct-ibeams"
  spec.version       = Awestruct::Ibeams::VERSION
  spec.authors       = ["R. Tyler Croy"]
  spec.email         = ["tyler@monkeypox.org"]

  spec.summary       = "Collection of helpful Awestruct extensions and helpers"
  spec.description   = "Collection of helpful Awestruct extensions and helpers"
  spec.homepage      = 'https://github.com/jenkins-infra/awestruct-ibeams'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'awestruct', '~> 0.5.6'
end
