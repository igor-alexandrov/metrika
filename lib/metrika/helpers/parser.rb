module Metrika
  module Helpers
    module Parser

    protected
      def parse_json(data)        
        Yajl::Parser.parse(data)
      end
    end
  end
end
