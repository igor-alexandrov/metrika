module Metrika
  module Helpers
    autoload :Authorization, METRIKA_PATH + "helpers/authorization"
    autoload :Request,       METRIKA_PATH + "helpers/request"

    include Metrika::Helpers::Authorization
    include Metrika::Helpers::Request

  protected
    def format_params(params)  
      params[:date1] = self.format_date(params[:date1]) if params[:date1].present?
      params[:date2] = self.format_date(params[:date2]) if params[:date2].present?

      params
    end

    def format_date(date)
      date.is_a?(Date) || date.is_a?(DateTime) ? date.strftime('%Y%m%d') : date
    end
  end
end
