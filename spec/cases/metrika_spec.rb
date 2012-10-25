require 'helper'

describe Metrika do

  context 'Configuration' do
    before(:each) do
      Metrika.application_id = nil
      Metrika.application_password = nil    
    end

    it "should be able to set the consumer token and consumer secret" do
      Metrika.application_id  = APPLICATION_ID
      Metrika.application_password = APPLICATION_PASSWORD

      Metrika.application_id.should  == APPLICATION_ID
      Metrika.application_password.should == APPLICATION_PASSWORD
    end

    it "should be able to set the consumer token and consumer secret via a configure block" do
      Metrika.configure do |config|
        config.application_id  = APPLICATION_ID
        config.application_password = APPLICATION_PASSWORD
      end

      Metrika.application_id.should  == APPLICATION_ID
      Metrika.application_password.should == APPLICATION_PASSWORD
    end
  end 
end