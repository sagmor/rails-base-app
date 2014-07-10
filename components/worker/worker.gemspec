$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "worker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "worker"
  s.version     = Worker::VERSION
  s.authors     = ["Sample"]
  s.email       = ["devs@example.com"]
  s.homepage    = "http://sample.dev"
  s.summary     = "Sample Workers"
  s.description = "Sample Workers"
  s.license     = "Propietary"

  s.files = Dir["{app,config,db,lib}/**/*", "README.md"]

  s.add_dependency "core"
  s.add_dependency "sidekiq"
  s.add_dependency "sidetiq"

end
