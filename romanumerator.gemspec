# frozen_string_literal: true

require_relative "lib/romanumerator/version"

Gem::Specification.new do |spec|
  spec.name          = "romanumerator"
  spec.version       = Romanumerator::VERSION
  spec.authors       = ["Craig Smith"]
  spec.email         = ["hello@craigiansmith.com.au"]

  spec.summary       = "A counter and converter of roman numerals."
  spec.description   = "Ever seen MCMXXXBLAH at the beginning of a movie? Well, now you can find out the year it represents. Also doubles as a nifty tool to count the value of a name by interpreting the letters which are roman numerals and summing their values."
  spec.homepage      = "https://github.com/craigiansmith/romanumerator"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")
  spec.add_development_dependency "bundler", ">=2"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency "optparse"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/craigiansmith/romanumerator.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end


