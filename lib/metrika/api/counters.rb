module Metrika
  module Api
    module Counters      
      def get_counters
        self.get(self.counters_path)['counters']
      end      

      def create_counter(params)
        self.post(self.counters_path, params)['counter']        
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

      def delete_counter(id)
        self.delete(self.counter_path(id))['counter']
      end

      def counter_path(id)
        "/counter/#{id}"
      end

      def check_counter(id)
        self.get(self.counter_check_path(id))['counter']        
      end

      def counter_check_path(id)
        "/counter/#{id}/check"
      end  
    end
  end
end