# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metrika/version'

Gem::Specification.new do |gem|
  gem.name          = 'metrika'
  gem.version       = Metrika::Version::STRING
  gem.authors       = ['Igor Alexandrov']
  gem.email         = 'igor.alexandrov@gmail.com'
  gem.summary       = 'Wrapper for Yandex.Metrika API'
  gem.homepage      = 'http://github.com/igor-alexandrov/metrika'
  gem.licenses      = ['MIT']

  gem.files         = `git ls-files | grep -v 'build/*'`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'oauth2'
  gem.add_dependency 'yajl-ruby'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'shoulda'
  gem.add_development_dependency 'rdoc'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'webmock'
end