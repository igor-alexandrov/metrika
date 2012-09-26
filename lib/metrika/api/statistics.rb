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

      # Content
      def get_counter_stat_content_popular(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_content_popular_path, params.merge(:id => id))
      end

      def counter_stat_content_popular_path
        "/stat/content/popular"
      end

      def get_counter_stat_content_entrance(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_content_entrance_path, params.merge(:id => id))
      end

      def counter_stat_content_entrance_path
        "/stat/content/entrance"
      end

      def get_counter_stat_content_exit(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_content_exit_path, params.merge(:id => id))
      end

      def counter_stat_content_exit_path
        "/stat/content/exit"
      end

      def get_counter_stat_content_titles(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_content_titles_path, params.merge(:id => id))
      end

      def counter_stat_content_titles_path
        "/stat/content/titles"
      end

      def get_counter_stat_content_url_param(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_content_url_param_path, params.merge(:id => id))
      end

      def counter_stat_content_url_param_path
        "/stat/content/url_param"
      end

      def get_counter_stat_content_user_vars(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_content_user_vars_path, params.merge(:id => id))
      end

      def counter_stat_content_user_vars_path
        "/stat/content/user_vars"
      end

      def get_counter_stat_content_ecommerce(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_content_ecommerce_path, params.merge(:id => id))
      end

      def counter_stat_content_ecommerce_path
        "/stat/content/ecommerce"
      end

      # Geo
      def get_counter_stat_geo(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_geo_path, params.merge(:id => id))
      end

      def counter_stat_geo_path
        "/stat/geo"
      end

      # Demography
      def get_counter_stat_demography_age_gender(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_demography_age_gender_path, params.merge(:id => id))
      end

      def counter_stat_demography_age_gender_path
        "/stat/demography/age_gender"
      end

      def get_counter_stat_demography_structure(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_demography_structure_path, params.merge(:id => id))
      end

      def counter_stat_demography_structure_path
        "/stat/demography/structure"
      end

      # Tech
      def get_counter_stat_tech_browsers(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_tech_browsers_path, params.merge(:id => id))
      end

      def counter_stat_tech_browsers_path
        "/stat/tech/browsers"
      end

      def get_counter_stat_tech_os(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_tech_os_path, params.merge(:id => id))
      end

      def counter_stat_tech_os_path
        "/stat/tech/os"
      end

      def get_counter_stat_tech_display(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_tech_display_path, params.merge(:id => id))
      end

      def counter_stat_tech_display_path
        "/stat/tech/display"
      end

      def get_counter_stat_tech_mobile(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_tech_mobile_path, params.merge(:id => id))
      end

      def counter_stat_tech_mobile_path
        "/stat/tech/mobile"
      end

      def get_counter_stat_tech_flash(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_tech_flash_path, params.merge(:id => id))
      end

      def counter_stat_tech_flash_path
        "/stat/tech/flash"
      end

      def get_counter_stat_tech_silverlight(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_tech_silverlight_path, params.merge(:id => id))
      end

      def counter_stat_tech_silverlight_path
        "/stat/tech/silverlight"
      end

      def get_counter_stat_tech_dotnet(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_tech_dotnet_path, params.merge(:id => id))
      end

      def counter_stat_tech_dotnet_path
        "/stat/tech/dotnet"
      end

      def get_counter_stat_tech_java(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_tech_java_path, params.merge(:id => id))
      end

      def counter_stat_tech_java_path
        "/stat/tech/java"
      end

      def get_counter_stat_tech_cookies(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_tech_cookies_path, params.merge(:id => id))
      end

      def counter_stat_tech_cookies_path
        "/stat/tech/cookies"
      end

      def get_counter_stat_tech_javascript(id, params = {})
        params = self.format_params(params)

        self.get(self.counter_stat_tech_javascript_path, params.merge(:id => id))
      end

      def counter_stat_tech_javascript_path
        "/stat/tech/javascript"
      end
    end
  end
end