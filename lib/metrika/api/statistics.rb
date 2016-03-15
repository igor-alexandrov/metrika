module Metrika
  module Api
    module Statistics

      METRICS = {}

      %W(#{''} PerDay PerHour PerMinute).each do |interval|
        %w(visits pageviews).each do |metric|
          METRICS["#{metric}#{interval}".to_sym] = "ym:s:#{metric}#{interval}"
        end
      end

      %w(under18AgePercentage upTo24AgePercentage upTo34AgePercentage upTo44AgePercentage).each do |age_interval|
        METRICS["age_#{age_interval}".to_sym] = "ym:s:#{age_interval}"
      end

      DIMENSIONS = { gender: "ym:s:gender", country: "ym:s:regionCountry", city: "ym:s:regionCity",
                     ip: "ys:s:ipAddress", device_type: "ym:s:deviceCategory", device_manufacturer: "ym:s:mobilePhone",
                     device_model: "ym:s:mobilePhoneModel", OS: "ym:s:operatingSystemRoot", browser: "ym:s:browser",
                     screen_size: "ym:s:windowClientArea", traffic_sources: "ym:s:<attribution>TrafficSource",
                     source_engine: "ym:s:<attribution>SourceEngine", advert_engine: "ym:s:<attribution>AdvEngine",
                     referal_site: "ym:s:<attribution>ReferalSource", social_network: "ym:s:<attribution>SocialNetwork",
                     referer: "ym:s:referer", interest: "ym:s:interest" }

      def get_counter_stats(id, params = {})
        params = self.format_params(params)
        raise Metrika::Errors::GeneralError.new("Provide at least metric for query") if params[:metrics].nil?
        self.get("/stat/v1/data", params.merge(id: id))
      end
    end
  end
end
