# frozen_string_literal: true

require_relative "lib/temporalio/version"

Gem::Specification.new do |spec|
  spec.name = "temporalio"
  spec.version = Temporalio::VERSION
  spec.authors = ["Temporal Technologies Inc", "Clara Home Care Inc"]
  spec.email = ["contact@clarahomecare.com"]

  spec.summary = "Clara Temporal.io Ruby SDK Fork"
  spec.homepage = "https://github.com/igillis-clara/sdk-ruby"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/igillis-clara/sdk-ruby"
  spec.metadata["github_repo"] = "git@github.com-clara:igillis-clara/sdk-ruby.git"

  spec.files = Dir["lib/**/*.rb", "LICENSE", "README.md", "Cargo.*",
    "temporalio.gemspec", "Gemfile", "Rakefile", ".yardopts"]

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/Cargo.toml"]
  spec.metadata["rubygems_mfa_required"] = "true"
  spec.required_ruby_version = ">= 3.2.0"

  spec.add_dependency "google-protobuf", ">= 3.25.0"
  spec.add_dependency "logger"
end
