# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "thinking_sphinx/deltas/resque_delta/version"

Gem::Specification.new do |s|
  s.name        = "ryansch-ts-resque-delta"
  s.version     = ThinkingSphinx::Deltas::ResqueDeltaInfo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Aaron Gibralter", "Ryan Schlesinger"]
  s.email       = ["aaron.gibralter@gmail.com", "ryan@instanceinc.com"]
  s.homepage    = "http://github.com/ryansch/ts-resque-delta"
  s.summary     = %q{Thinking Sphinx - Resque Deltas}
  s.description = %q{Manage delta indexes via Resque for Thinking Sphinx}

  s.rubyforge_project = "ts-resque-delta"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "thinking-sphinx", ">= 1.3.6"
  s.add_dependency "resque", "~> 1.10"
  s.add_dependency "resque-lock-timeout", "~> 0.2.1"

  s.add_development_dependency "rspec", "~> 1"
  s.add_development_dependency "cucumber", ">= 0"
  s.add_development_dependency "database_cleaner", ">= 0.5.2"
end
