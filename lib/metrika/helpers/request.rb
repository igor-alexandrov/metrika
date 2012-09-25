module Metrika
  module Helpers
    module Request
      DEFAULT_OPTIONS = {
        :headers => {
          'Accept' => 'application/x-yametrika+json',
          'Content-Type' => 'application/x-yametrika+json'
        }
      }

    protected

      def get(path, params = {})        
        # raise Metrika::Errors::NoTokenError unless self.token

        # begin
          response = self.token.get(path, DEFAULT_OPTIONS.merge(:params => params))
        # rescue OAuth2::Error => e

        # end  
        
        # self.raise_errors(response)
        response
      end

      def post(path, body='', options={})
        # raise Metrika::Errors::NoTokenError unless self.token

        # response = self.token.post(path, body, DEFAULT_OPTIONS.merge(options))

        # self.raise_errors(response)
        response
      end


      def put(path, body = {})
        # raise Metrika::Errors::NoTokenError unless self.token

        response = self.token.put(path, DEFAULT_OPTIONS.merge(options))
        
        # self.raise_errors(response)
        response
      end

      def delete(path, options={})
        # raise Metrika::Errors::NoTokenError unless self.token

        # response = self.token.delete(path, DEFAULT_OPTIONS.merge(options))
        
        # self.raise_errors(response)
        response
      end
    end
  end
end
