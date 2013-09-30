$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "atoz_list/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "atoz_list"
  s.version     = AtozList::VERSION
  s.authors     = ["Jeff Holland"]
  s.email       = ["jeff.holland@gmail.com"]
  s.homepage    = ""
  s.summary     = ""
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"

  s.add_development_dependency "sqlite3"
end
