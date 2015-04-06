module ToNil
  module Errors
    class CouldNotNil < StandardError
      attr_reader :object
      def initialize(message, object)
        super(message)
        @object = object
      end
    end
  end
end