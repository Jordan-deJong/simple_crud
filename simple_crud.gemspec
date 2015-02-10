$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_crud/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_crud"
  s.version     = SimpleCrud::VERSION
  s.authors     = ["Jordan-deJong"]
  s.email       = ["jordan.dejong@me.com"]
  s.homepage    = "https://github.com/Jordan-deJong/simple_crud.git"
  s.summary     = "Clean up that CRUD!"
  s.description = "Create, Update and Delete all in one line."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"

  s.add_development_dependency "sqlite3"
end
