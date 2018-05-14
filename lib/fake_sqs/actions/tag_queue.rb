module FakeSQS
  module Actions
    class TagQueue
      def initialize(options = {})
        @responder = options.fetch(:responder)
      end

      def call(queue_name, params)
        @responder.call :TagQueue
      end
    end
  end
end
