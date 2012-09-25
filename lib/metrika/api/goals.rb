module Metrika
  module Api
    module Goals
      def get_counter_goals(counter_id)
        self.get(self.counter_goals_path(counter_id))['goals']
      end

      def create_counter_goal(counter_id, params)
        self.post(self.counter_goals_path(counter_id), params)['goals']
      end

      def counter_goals_path(counter_id)
        "/counter/#{counter_id}/goals"
      end

      def get_counter_goal(counter_id, id)
        self.get(self.counter_goal_path(counter_id, id))['goal']
      end      

      def update_counter_goal(counter_id, id, params)
        self.put(self.counter_goal_path(counter_id, id), params)['goal']
      end

      def delete_counter_goal(counter_id, id)
        self.delete(self.counter_goal_path(counter_id, id))['goal']
      end

      def counter_goal_path(counter_id, id)
        "/counter/#{counter_id}/goal/#{id}"
      end
    end
  end
end