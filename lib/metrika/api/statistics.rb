module Metrika
  module Api
    module Statistics

      def get_counter_stats(id, params = {})
        params = self.format_params(params)
        raise Metrika::Errors::GeneralError.new("Provide at least metric for query") if params[:metrics].nil?
        self.get("/stat/v1/data", params.merge(id: id))
      end
      
    end
  end
end
