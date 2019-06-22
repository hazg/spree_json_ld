# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_json_ld'
  s.version     = '4.0.0'
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

  s.add_dependency('spree_core', '~> 4.0.0.alpha')
  s.add_dependency('addressable')

end
