$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "api"
  s.version     = API::VERSION
  s.authors     = ["Sample"]
  s.email       = ["devs@example.com"]
  s.homepage    = "http://api.sample.dev"
  s.summary     = "Sample API"
  s.description = "Sample API"
  s.license     = "Propietary"

  s.files = Dir["{app,config,db,lib}/**/*", "README.md"]

  s.add_dependency "rails-components"
  s.add_dependency "core"
  s.add_dependency "worker"

  s.add_dependency "rails-api"
  s.add_dependency "doorkeeper"

end
