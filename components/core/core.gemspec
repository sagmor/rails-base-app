$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "core"
  s.version     = Core::VERSION
  s.authors     = ["Sample"]
  s.email       = ["devs@example.com"]
  s.homepage    = "http://sample.dev"
  s.summary     = "Sample Core"
  s.description = "Sample Core"
  s.license     = "Propietary"

  s.files = Dir["{app,config,db,lib}/**/*", "README.md"]

  s.add_dependency "rails", '4.1.1'

  s.add_dependency "pg"
  s.add_dependency 'bcrypt', '~> 3.1.7'

end

