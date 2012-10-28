require 'helper'

RSpec::Matchers.define :be_a_counter_hash do |expected|
  match do |actual|  
    actual.should be_instance_of(Hash)

    actual.should have_key('code_options')
    actual.should have_key('code_status')
    actual.should have_key('name')
    actual.should have_key('permission')
    actual.should have_key('monitoring')
    actual.should have_key('site')
    actual.should have_key('id')
    actual.should have_key('type')
    actual.should have_key('owner_login')
    actual.should have_key('code')
  end
end

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
    it 'should be' do
      VCR.use_cassette("counters") do
        lambda {
          counters = @client.get_counters
          counters.should_not be_nil        
        }.should_not raise_error
      end
    end

    it 'should return array of counter hashes' do
      VCR.use_cassette('counters') do
        counters = @client.get_counters
        counters.should be_instance_of(Array)
        counters.size.should > 0
      end      
    end
  end

  context '#get_counter' do
    before(:all) do
      VCR.use_cassette('counters') do
        @counter_id = @client.get_counters[0]['id']
      end      
    end

    it 'should be' do
      VCR.use_cassette("counter_#{@counter_id}") do
        lambda {
          counter = @client.get_counter(@counter_id)
          counter.should_not be_nil        
        }.should_not raise_error
      end
    end

    it 'should return a counter hash' do
      VCR.use_cassette("counter_#{@counter_id}") do
        counter = @client.get_counter(@counter_id)
        counter.should be_a_counter_hash        
      end      
    end

    it 'should raise NotAuthorizedError when trying to get counter that you do not have ability to get'  do
      another_counter_id = 237992
      VCR.use_cassette("counter_#{another_counter_id}") do
        lambda {
          counter = @client.get_counter(another_counter_id)          
        }.should raise_error(Metrika::Errors::AccessDeniedError)
      end
    end

    it 'should raise NotFoundError when trying to get counter that does not exist'  do      
      VCR.use_cassette('non_existent_counter') do
        lambda {
          counter = @client.get_counter('non_existent_counter')          
        }.should raise_error(Metrika::Errors::NotFoundError)
      end
    end

  end
end
