module Metrika
  module Api
    module Operations
      def get_counter_operations(counter_id)
        self.get(self.counter_operations_path(counter_id))['operations']
      end

      def create_counter_operation(counter_id, params)
        self.post(self.counter_operations_path(counter_id), params)['operations']
      end

      def counter_operations_path(counter_id)
        "/counter/#{counter_id}/operations"
      end

      def get_counter_operation(counter_id, id)
        self.get(self.counter_operation_path(counter_id, id))['operation']
      end      

      def update_counter_operation(counter_id, id, params)
        self.put(self.counter_operation_path(counter_id, id), params)['operation']
      end

      def delete_counter_operation(counter_id, id)
        self.delete(self.counter_operation_path(counter_id, id))['operation']
      end

      def counter_operation_path(counter_id, id)
        "/counter/#{counter_id}/operation/#{id}"
      end
    end
  end
end