# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_quick_rma/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_quick_rma'
  s.version     = SolidusQuickRma::VERSION
  s.summary     = 'A quick way to create an RMA for Solidus'
  s.description = 'Adds a quick way to deal with Return Authorizations in the Solidus Backend'
  s.license     = 'BSD-3-Clause'

  s.author    = 'Braden Douglass'
  s.email     = 'braden.douglass@gmail.com'
  s.homepage  = 'https://www.glossier.com'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'solidus_core', '~> 1.4'
  s.add_dependency 'solidus_backend', '~> 1.4'
  s.add_dependency 'deface', '~> 1.0.2'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop', '0.37.2'
  s.add_development_dependency 'rubocop-rspec', '1.4.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'tzinfo-data'
end
