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
        response = self.token.get(path, DEFAULT_OPTIONS.merge(:params => params).merge(options))
        
        # self.raise_errors(response)
        Yajl::Parser.parse(response.body)
      end

      def post(path, body = {}, options = {})
        encoded_body = Yajl::Encoder.encode(body)
        response = self.token.post(path, DEFAULT_OPTIONS.merge(:body => encoded_body).merge(options))

        # self.raise_errors(response)
        Yajl::Parser.parse(response.body)
      end


      def put(path, body = {}, options = {})        
        encoded_body = Yajl::Encoder.encode(body)
        response = self.token.put(path, DEFAULT_OPTIONS.merge(:body => encoded_body).merge(options))
        
        # self.raise_errors(response)
        Yajl::Parser.parse(response.body)
      end

      def delete(path, options={})      
        response = self.token.delete(path, DEFAULT_OPTIONS.merge(options))
        
        # self.raise_errors(response)
        Yajl::Parser.parse(response.body)
      end
    end
  end
end
