require 'helper'

describe Metrika do

  before(:all) do
    Metrika.configure do |config|
      config.application_id  = APPLICATION_ID
      config.application_password = APPLICATION_PASSWORD
    end
  end

  before(:each) do
    @client = Metrika::Client.new      
  end

  context '-- unauthorized' do
    it 'should raise an error on GET' do
      lambda {
        @client.send(:get, 'url')
      }.should raise_error(Metrika::Errors::UnauthorizedError)
    end

    it 'should raise an error on POST' do
      lambda {
        @client.send(:post, 'url')
      }.should raise_error(Metrika::Errors::UnauthorizedError)
    end

    it 'should raise an error on PUT' do
      lambda {
        @client.send(:put, 'url')
      }.should raise_error(Metrika::Errors::UnauthorizedError)
    end

    it 'should raise an error on DELETE' do
      lambda {
        @client.send(:delete, 'url')
      }.should raise_error(Metrika::Errors::UnauthorizedError)
    end
  end

  context '#authorization_url' do    
    it 'should look like authorization url' do
      @client.authorization_url.should match /\Ahttps:\/\/oauth.yandex.ru\/authorize.+#{APPLICATION_ID}\z/
    end
  end

  context '#restore_token' do
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