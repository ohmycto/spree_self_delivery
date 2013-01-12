require 'rake'
require 'rake/testtask'
require 'rake/packagetask'
require 'rubygems/package_task'
# If this extension was generated from inside an application,
# then you *must* specify the rspec-rails and cucumber-rails gems as dependencies
# for that application, otherwise these files will not be found.
#
# Alternatively, place a Gemfile inside the extension directory which specifies these gems as dependencies
require 'rspec/core/rake_task'
require 'cucumber/rake/task'
require 'spree_core/testing_support/common_rake'

RSpec::Core::RakeTask.new
Cucumber::Rake::Task.new

task :default => [:spec, :cucumber ]

spec = eval(File.read('spree_self_delivery.gemspec'))

Gem::PackageTask.new(spec) do |p|
  p.gem_spec = spec
end

desc "Release to gemcutter"
task :release => :package do
  require 'rake/gemcutter'
  Rake::Gemcutter::Tasks.new(spec).define
  Rake::Task['gem:push'].invoke
end

desc "Generates a dummy app for testing"
task :test_app do
  ENV['LIB_NAME'] = 'spree_self_delivery'
  Rake::Task['common:test_app'].invoke
end
