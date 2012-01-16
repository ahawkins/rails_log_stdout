$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_log_stdout/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_log_stdout"
  s.version     = RailsLogStdout::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsLogStdout."
  s.description = "TODO: Description of RailsLogStdout."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.0.0"

  s.add_development_dependency "sqlite3"
end
