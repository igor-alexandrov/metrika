module Metrika
  class Client
    include Helpers::Authorization
    include Helpers::Request
    include Helpers::Parser

    include Api::Methods

    def initialize(application_id = Metrika.application_id, application_password = Metrika.application_password)
      @application_id = application_id
      @application_password = application_password
    end
  end
end