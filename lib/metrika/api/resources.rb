module Metrika
  module Api
    module Resources
      %w( goal filter operation grant ).each do |resource|
        resources = "#{resource}s"

        define_method "get_counter_#{resources}" do | counter_id |
          self.get(self.send("counter_#{resources}_path", counter_id))[resources]
        end

        define_method "create_counter_#{resource}" do | counter_id, params |
          self.post(self.send("counter_#{resources}_path", counter_id), params)[resources]
        end

        define_method "counter_#{resources}_path" do | counter_id |
          "/counter/#{counter_id}/#{resources}"
        end

        define_method "get_counter_#{resource}" do | counter_id, id |
          self.get(self.send("counter_#{resource}_path", counter_id, id))[resource]
        end

        define_method "update_counter_#{resource}" do | counter_id, id, params |
          self.put(self.send("counter_#{resource}_path", counter_id, id), params)[resource]
        end

        define_method "delete_counter_#{resource}" do | counter_id, id |
          self.delete(self.send("counter_#{resource}_path", counter_id, id))[resource]
        end

        define_method "counter_#{resource}_path" do | counter_id, id |
          "/counter/#{counter_id}/#{resource}/#{id}"
        end
      end
    end
  end
end