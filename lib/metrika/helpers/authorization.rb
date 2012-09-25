module Metrika
  module Helpers
    module Authorization
      attr_reader :token

      DEFAULT_OAUTH_OPTIONS = {
        :site => 'http://api-metrika.yandex.ru',
        :authorize_url => 'https://oauth.yandex.ru/authorize',
        :token_url => 'https://oauth.yandex.ru/token'        
      }      
        
      def authorize_token(authorization_code)
        @token = (self.client.auth_code.get_token(authorization_code) rescue nil)
      end

      def authorization_url
        self.client.auth_code.authorize_url
      end

      def restore_token(token_code)
        @token = OAuth2::AccessToken.new(self.client, token_code)
      end

    protected

      def client
        @client ||= OAuth2::Client.new(@application_id, @application_password, DEFAULT_OAUTH_OPTIONS)
      end  
    end
  end
end