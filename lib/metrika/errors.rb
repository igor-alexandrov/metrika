module Metrika
  module Errors
    class MetrikaError < StandardError
      attr_reader :data

      def initialize(data)
        @data = data
        super
      end
    end

    class UnauthorizedError      < MetrikaError; end
    class GeneralError           < MetrikaError; end
    class AccessDeniedError      < MetrikaError; end
    class NoTokenError           < StandardError; end
    class NotFoundError          < StandardError; end
  end
end