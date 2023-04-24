# frozen_string_literal: true

require_relative "lib/atproto/version"

Gem::Specification.new do |spec|
  spec.name = "atproto"
  spec.version = ATProto::VERSION
  spec.authors = ["David Celis"]
  spec.email = ["me@davidcel.is"]

  spec.summary = "A gem for interacting with servers that implement the AT protocol"
  spec.description = "ATProto is a gem for interacting with servers that implement the AT protocol, such as bsky.social"

  spec.homepage = "https://github.com/davidcelis/atproto"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/davidcelis/atproto"
  spec.metadata["changelog_uri"] = "https://github.com/davidcelis/atproto/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
