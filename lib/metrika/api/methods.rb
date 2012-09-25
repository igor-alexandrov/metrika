module Metrika
  module Api
    module Methods  
      def get_counters
        self.get(self.counters_path)['counters']        
      end      

      def counters_path
        "/counters"
      end

      def get_counter(id)
        self.get(self.counter_path(id))['counter']        
      end

      def update_counter(id, params)
        self.put(self.counter_path(id), params)['counter']        
      end

      def counter_path(id)
        "/counter/#{id}"
      end
    end
  end
end
