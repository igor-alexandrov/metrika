module Metrika
  module Api
    module Statistics

      # Traffic
      def get_counter_stat_traffic_summary(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_traffic_summary_path, params.merge(:id => id))
      end

      def counter_stat_traffic_summary_path
        "/stat/traffic/summary"
      end

      def get_counter_stat_traffic_deepness(id, params = {})
        params = self.format_params(params)
        
        self.get(self.counter_stat_traffic_deepness_path, params.merge(:id => id))
      end

      def counter_stat_traffic_deepness_path
        "/stat/traffic/deepness"
      end

      def get_counter_stat_traffic_hourly(id, params = {})
        params = self.format_params(params)
        
        self.get(self.counter_stat_traffic_hourly_path, params.merge(:id => id))
      end

      def counter_stat_traffic_hourly_path
        "/stat/traffic/hourly"
      end

      def get_counter_stat_traffic_load(id, params = {})
        params = self.format_params(params)
        
        self.get(self.counter_stat_traffic_load_path, params.merge(:id => id))
      end

      def counter_stat_traffic_load_path
        "/stat/traffic/load"
      end  

      # Sources
      def get_counter_stat_sources_summary(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_sources_summary_path, params.merge(:id => id))
      end

      def counter_stat_sources_summary_path
        "/stat/sources/summary"
      end

      def get_counter_stat_sources_sites(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_sources_sites_path, params.merge(:id => id))
      end

      def counter_stat_sources_sites_path
        "/stat/sources/sites"
      end

      def get_counter_stat_sources_search_engines(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_sources_search_engines_path, params.merge(:id => id))
      end

      def counter_stat_sources_search_engines_path
        "/stat/sources/search_engines"
      end

      def get_counter_stat_sources_phrases(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_sources_phrases_path, params.merge(:id => id))
      end

      def counter_stat_sources_phrases_path
        "/stat/sources/phrases"
      end

      def get_counter_stat_sources_marketing(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_sources_marketing_path, params.merge(:id => id))
      end

      def counter_stat_sources_marketing_path
        "/stat/sources/marketing"
      end

      def get_counter_stat_sources_direct_summary(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_sources_direct_summary_path, params.merge(:id => id))
      end

      def counter_stat_sources_direct_summary_path
        "/stat/sources/direct/summary"
      end

      def get_counter_stat_sources_direct_platforms(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_sources_direct_platforms_path, params.merge(:id => id))
      end

      def counter_stat_sources_direct_platforms_path
        "/stat/sources/direct/platforms"
      end

      def get_counter_stat_sources_direct_regions(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_sources_direct_regions_path, params.merge(:id => id))
      end

      def counter_stat_sources_direct_regions_path
        "/stat/sources/direct/regions"
      end

      def get_counter_stat_sources_tags(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_sources_tags_path, params.merge(:id => id))
      end

      def counter_stat_sources_tags_path
        "/stat/sources/tags"
      end
    end
  end
end