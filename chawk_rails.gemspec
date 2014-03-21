$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "chawk_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name             = "chawk_rails"
  s.version          = ChawkRails::VERSION
  s.authors       = ["Scott Russell"]
  s.email         = ["queuetue@gmail.com"]
  s.summary       = %q{Time Series Storage Engine}
  s.description   = %q{A rails plugin for the chawk storage engine for time-series data.}
  s.homepage      = "http://www.queuetue.com/Chawk"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.4"
  s.add_dependency "chawk", "~> 0.1.16"

  s.add_development_dependency "sqlite3"
end
