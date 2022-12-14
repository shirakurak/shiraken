# frozen_string_literal: true

require_relative "lib/shiraken/version"

Gem::Specification.new do |spec|
  spec.name = "shiraken"
  spec.version = Shiraken::VERSION
  spec.authors = ["shirakurak"]
  spec.email = ["surakura@hotmail.co.jp"]

  spec.summary = "cli tool about me(@shirakurak)"
  spec.description = "cli tool to show/operate information about me"
  spec.homepage = "https://github.com/shirakurak/shiraken"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/shirakurak/shiraken"
  spec.metadata["changelog_uri"] = "https://github.com/shirakurak/shiraken/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_dependency "thor"
end
