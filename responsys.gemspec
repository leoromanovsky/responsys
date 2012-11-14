Gem::Specification.new do |s|
  s.name        = 'responsys'
  s.version     = '0.0.2'
  s.platform    = Gem::Platform::RUBY
  s.summary     = 'Responsys Interact API client.'
  s.description = 'A client for interacting with the Responsys API.'
  s.author      = 'Leo Romanovsky'
  s.email       = 'leoromanovsky@gmail.com'
  s.homepage    = 'http://github.com/leoromanovsky/responsys'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ['lib']

  s.add_dependency('mumboe-soap4r', '~> 1.5.8.5')
end