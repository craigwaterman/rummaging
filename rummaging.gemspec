$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require "rummaging/version"

Gem::Specification.new do |s|
  s.name        = 'rummaging'
  s.version     = Rummaging::VERSION.dup
  s.date        = Rummaging::RELEASE_DATE.dup
  s.summary     = "Rummaging"
  s.description = "Rummage through your nested data structures with flexible queries."
  s.authors     = ["Craig Waterman"]
  s.email       = 'craigwaterman@gmail.com'
  s.homepage    =
      'http://rubygems.org/gems/rummaging'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_development_dependency 'rspec',   '~> 3.1'
  s.add_development_dependency 'guard-rspec', '~> 4.4'
end
