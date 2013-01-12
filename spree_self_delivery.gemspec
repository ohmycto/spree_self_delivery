# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_self_delivery'
  s.version     = '0.70.0'
  s.summary     = ''
  s.description = ''
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Babur Usenakunov'
  s.email             = 'bob.usenakunov@gmail.com'
  s.homepage          = 'https://github.com/secoint/spree_self_delivery'

  #s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 0.70.0'
end

