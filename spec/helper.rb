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
  c.default_cassette_options = {:record => :once}
end

RSpec.configure do |c|
  c.extend VCR::RSpec::Macros
end

APPLICATION_ID = '663576cbd55948a4ae45424fb508ef97'
APPLICATION_PASSWORD = 'fc2f76dc877e41a4a6cbe78d73faff85'

token_file = File.expand_path('../.access_token', __FILE__)
if File.exists?(token_file)
  ACCESS_TOKEN = File.read(token_file).strip
else  
  ACCESS_TOKEN = 'FAKETOKEN'
  puts "You are using a fake access token. You can only use API responds recorded by VCR"
end