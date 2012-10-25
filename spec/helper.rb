$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)

require 'metrika'
require 'rspec'
require 'webmock/rspec'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/cassettes'
  c.hook_into(:webmock)
  c.ignore_localhost = true
  c.default_cassette_options = { :record => :none }
end

RSpec.configure do |c|
  c.extend VCR::RSpec::Macros
end

# You think that I am bit crazy to save all these here? No, it is just a development authorization from Yandex
APPLICATION_ID = '663576cbd55948a4ae45424fb508ef97'
APPLICATION_PASSWORD = 'fc2f76dc877e41a4a6cbe78d73faff85'

ACCESS_TOKEN = '926b254ca2f24869999a3d404a01f616'