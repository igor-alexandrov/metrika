require 'helper'

describe Metrika do

  before(:each) do
    Metrika.application_id = nil
    Metrika.application_password = nil    
  end

  it "should be able to set the consumer token and consumer secret" do
    Metrika.application_id  = 'consumer_token'
    Metrika.application_password = 'consumer_secret'

    Metrika.application_id.should  == 'consumer_token'
    Metrika.application_password.should == 'consumer_secret'
  end

  it "should be able to set the consumer token and consumer secret via a configure block" do
    Metrika.configure do |config|
      config.application_id  = 'consumer_token'
      config.application_password = 'consumer_secret'
    end

    Metrika.application_id.should  == 'consumer_token'
    Metrika.application_password.should == 'consumer_secret'
  end

end