module Metrika
  module Api
    module Statistics
      # Traffic
      %w( summary deepness hourly load ).each do |report|
        define_method "get_counter_stat_traffic_#{report}" do | id, params = {} |
          params = self.format_params(params)

          self.get(self.send("counter_stat_traffic_#{report}_path"), params.merge(:id => id))
        end

        define_method "counter_stat_traffic_#{report}_path" do                
          "/stat/traffic/#{report}"      
        end        
      end

      # Sources
      %w( summary sites search_engines phrases marketing direct_summary direct_platforms direct_regions tags ).each do |report|
        define_method "get_counter_stat_sources_#{report}" do | id, params = {} |
          params = self.format_params(params)

          self.get(self.send("counter_stat_sources_#{report}_path"), params.merge(:id => id))
        end

        define_method "counter_stat_sources_#{report}_path" do                
          "/stat/sources/#{report}"      
        end        
      end

      # Content
      %w( popular entrance exit titles url_param user_vars ecommerce ).each do |report|
        define_method "get_counter_stat_content_#{report}" do | id, params = {} |
          params = self.format_params(params)

          self.get(self.send("counter_stat_content_#{report}_path"), params.merge(:id => id))
        end

        define_method "counter_stat_content_#{report}_path" do
          "/stat/content/#{report}"
        end
      end

      # Geo
      def get_counter_stat_geo(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_geo_path, params.merge(:id => id))
      end

      def counter_stat_geo_path
        "/stat/geo"
      end
      
      # Interest
      def get_counter_stat_interest(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_interest_path, params.merge(:id => id))
      end

      def counter_stat_interest_path
        "/stat/interest"
      end

      # Demography      
      %w( age_gender structure ).each do |report|
        define_method "get_counter_stat_demography_#{report}" do | id, params = {} |
          params = self.format_params(params)

          self.get(self.send("counter_stat_demography_#{report}_path"), params.merge(:id => id))
        end

        define_method "counter_stat_demography_#{report}_path" do
          "/stat/demography/#{report}"
        end
      end

      # Tech
      %w( browsers os display mobile flash silverlight dotnet java cookies javascript ).each do |report|
        define_method "get_counter_stat_tech_#{report}" do | id, params = {} |
          params = self.format_params(params)

          self.get(self.send("counter_stat_tech_#{report}_path"), params.merge(:id => id))
        end

        define_method "counter_stat_tech_#{report}_path" do
          "/stat/tech/#{report}"
        end
      end      
    end
  end
end
