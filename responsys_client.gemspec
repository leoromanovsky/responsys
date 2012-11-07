Gem::Specification.new do |s|
  s.name        = 'responsys_client'
  s.version     = '0.0.0'
  s.platform    = Gem::Platform::RUBY
  s.summary     = 'Responsys Interact API client.'
  s.description = 'A client for interacting with the Responsys API.'
  s.author      = 'Leo Romanovsky'
  s.email       = 'leoromanovsky@gmail.com'
  s.homepage    = 'http://github.com/leoromanovsky/responsys_client'

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end