#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require 'cucumber'
require 'cucumber/rake/task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = ["-c", "--format progress"]
end

Cucumber::Rake::Task.new(:features) do |t|
end

task :all_tests => [:spec, :setup_database, :features]

task :default => :all_tests

#task :travis => [:spec, :setup_database, :features]

task :setup_database do
  if ENV['TRAVIS']
    project_dir = Dir.pwd
    database_config_dir = File.join(project_dir, 'features', 'thinking_sphinx')
    FileUtils.cp(File.join(database_config_dir, 'database.travis.yml'), File.join(database_config_dir, 'database.yml'))
  end
end
