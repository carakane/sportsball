$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "app_component/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "app_component"
  spec.version     = AppComponent::VERSION
  spec.authors     = ["yolo"]
  spec.email       = ["ckane@covermymeds.com"]
  spec.homepage    = ""
  spec.summary     = "Summary of AppComponent."
  spec.description = "Description of AppComponent."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec-rails", '4.0.0.beta3'
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "shoulda-matchers"
  spec.add_development_dependency "rails-controller-testing"
  spec.add_development_dependency "database_cleaner-active_record"
  spec.add_development_dependency "pry"
  spec.add_dependency "slim-rails"
  spec.add_dependency "trueskill"
end
