$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "log_watcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "log_watcher"
  s.version     = LogWatcher::VERSION
  s.authors     = ["Jasl"]
  s.email       = ["jasl9187@hotmail.com"]
  s.homepage    = "http://jasl.github.com"
  s.summary     = "A simple tool to watch logs."
  s.description = "A simple tool to watch logs."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.0"
  # s.add_dependency "jquery-rails"

  # s.add_development_dependency "sqlite3"
end
