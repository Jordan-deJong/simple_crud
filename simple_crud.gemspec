$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_crud/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_crud"
  s.version     = SimpleCrud::VERSION
  s.authors     = ["Jordan-deJong"]
  s.email       = ["jordan.dejong@me.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SimpleCrud."
  s.description = "TODO: Description of SimpleCrud."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
