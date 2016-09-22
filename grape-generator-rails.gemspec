$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "grape/generator/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "grape-generator-rails"
  s.version     = Grape::Generator::Rails::VERSION
  s.authors     = ["sven"]
  s.email       = ["sven199109@gmail.com"]
  s.homepage    = "https://github.com/sven199109"
  s.summary     = "Rails Grape Generator"
  s.description = "Rails Grape Generator"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.0.0" #, ">= 5.0.0.1"
  s.add_dependency "grape"

  s.add_development_dependency "sqlite3"
end
