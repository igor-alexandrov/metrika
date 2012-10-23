module Metrika
  module Api
    module Filters
      def get_counter_filters(counter_id)
        self.get(self.counter_filters_path(counter_id))['filters']
      end

      def create_counter_filter(counter_id, params)
        self.post(self.counter_filters_path(counter_id), params)['filters']
      end

      def counter_filters_path(counter_id)
        "/counter/#{counter_id}/filters"
      end

      def get_counter_filter(counter_id, id)
        self.get(self.counter_filter_path(counter_id, id))['filter']
      end      

      def update_counter_filter(counter_id, id, params)
        self.put(self.counter_filter_path(counter_id, id), params)['filter']
      end

      def delete_counter_filter(counter_id, id)
        self.delete(self.counter_filter_path(counter_id, id))['filter']
      end

      def counter_filter_path(counter_id, id)
        "/counter/#{counter_id}/filter/#{id}"
      end
    end
  end
end