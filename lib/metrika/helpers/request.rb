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

      def get(path, params = {}, options = {})
        # raise Metrika::Errors::NoTokenError unless self.token

        
        response = self.token.get(path, DEFAULT_OPTIONS.merge(:params => params).merge(options))
        # rescue OAuth2::Error => e

        # end  
        
        # self.raise_errors(response)
        Yajl::Parser.parse(response.body)
      end

      def post(path, body = {}, options = {})
        # raise Metrika::Errors::NoTokenError unless self.token

        encoded_body = Yajl::Encoder.encode(body)
        response = self.token.post(path, DEFAULT_OPTIONS.merge(:body => encoded_body).merge(options))

        # self.raise_errors(response)
        Yajl::Parser.parse(response.body)
      end


      def put(path, body = {}, options = {})
        # raise Metrika::Errors::NoTokenError unless self.token

        encoded_body = Yajl::Encoder.encode(body)
        response = self.token.put(path, DEFAULT_OPTIONS.merge(:body => encoded_body).merge(options))
        
        # self.raise_errors(response)
        Yajl::Parser.parse(response.body)
      end

      def delete(path, options={})
        # raise Metrika::Errors::NoTokenError unless self.token

        response = self.token.delete(path, DEFAULT_OPTIONS.merge(options))
        
        # self.raise_errors(response)
        Yajl::Parser.parse(response.body)
      end
    end
  end
end
