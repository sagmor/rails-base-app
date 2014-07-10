$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "frontend/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "frontend"
  s.version     = Frontend::VERSION
  s.authors     = ["Sample"]
  s.email       = ["devs@example.com"]
  s.homepage    = "http://sample.dev"
  s.summary     = "Sample Frontend"
  s.description = "Sample Frontend"
  s.license     = "Propietary"

  s.files = Dir["{app,config,db,lib}/**/*", "README.md"]

  s.add_dependency "rails-components"

  # Javascripts
  s.add_dependency "es6_module_transpiler-rails", "~> 0.4.0"
  s.add_dependency "jquery-rails"
  s.add_dependency "ember-rails"
  s.add_dependency "ember-source", "~> 1.5.1.1"

  # Stylesheets
  s.add_dependency "sass-rails"
  s.add_dependency "autoprefixer-rails"
  s.add_dependency "gridle-rails"
  s.add_dependency "font-awesome-rails"

end


