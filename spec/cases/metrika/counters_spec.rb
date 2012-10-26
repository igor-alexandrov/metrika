require 'helper'

describe Metrika do

  before(:all) do
    Metrika.configure do |config|
      config.application_id  = APPLICATION_ID
      config.application_password = APPLICATION_PASSWORD
    end

    @client = Metrika::Client.new
    @client.restore_token(ACCESS_TOKEN)
  end

  context '#get_counters' do
    it 'should return array of counters' do
      VCR.use_cassette('counters') do
        counters = @client.get_counters
        counters.should be_instance_of(Array)
        counters.size.should > 0      
      end      
    end
  end
end
