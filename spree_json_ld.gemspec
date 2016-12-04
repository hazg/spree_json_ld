# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_json_ld'
  s.version     = '1.3.3'
  s.summary     = 'Add JSON LD support to Spree'
  s.description = 'Add JSON LD support to Spree'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Aleksandr Aleksandrov'
  s.email     = 'ya@hazg.net'
  s.homepage  = 'http://hazg.net'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.3.3'

  s.add_development_dependency 'capybara', '~> 2.0'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'sqlite3'
end
