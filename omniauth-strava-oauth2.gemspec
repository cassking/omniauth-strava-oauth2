# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-strava-oauth2/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Leo Romanovsky']
  gem.email         = ['leo@strava.com']
  gem.description   = %q{Official OmniAuth strategy for Strava.}
  gem.summary       = %q{Official OmniAuth strategy for Strava.}
  gem.homepage      = 'https://github.com/strava/omniauth-strava-oauth2'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec,features}/*`.split("\n")
  gem.name          = 'omniauth-strava-oauth2'
  gem.require_paths = ['lib']
  gem.version       = OmniAuth::Strava::Oauth2::VERSION

  #gem.add_dependency 'omniauth', '~> 1.6'
  gem.add_dependency 'omniauth-oauth2', '~> 1.4.0'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
