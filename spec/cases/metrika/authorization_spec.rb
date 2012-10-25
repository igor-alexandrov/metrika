require 'helper'

describe Metrika do

  before(:all) do
    Metrika.configure do |config|
      config.application_id  = APPLICATION_ID
      config.application_password = APPLICATION_PASSWORD
    end
  end

  context '#authorization_url' do
    before(:each) do
      @client = Metrika::Client.new      
    end

    it 'should look like authorization url' do
      @client.authorization_url.should match /\Ahttps:\/\/oauth.yandex.ru\/authorize.+#{APPLICATION_ID}\z/
    end
  end

  context '#restore_token' do
    before(:each) do
      @client = Metrika::Client.new      
    end

    it 'should not raise an error' do
      lambda {
        @client.restore_token(ACCESS_TOKEN)
      }.should_not raise_error
    end

    it 'should return a token' do
      @client.restore_token(ACCESS_TOKEN).should_not == nil
    end 

    it 'should be an instance of OAuth2::AccessToken' do
      @client.restore_token(ACCESS_TOKEN).should be_an_instance_of(OAuth2::AccessToken)
    end

  end
end