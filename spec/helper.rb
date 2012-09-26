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