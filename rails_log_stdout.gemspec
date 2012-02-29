$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_log_stdout/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_log_stdout"
  s.version     = RailsLogStdout::VERSION
  s.authors     = ["Adam Hawkins"]
  s.email       = ["me@broadcastingadam.com"]
  s.summary     = "Log all Rails things to STDOUT"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.0"

  s.add_development_dependency "sqlite3"
end
