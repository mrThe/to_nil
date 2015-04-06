require "to_nil/version"

# Errors
require "to_nil/errors/could_not_nil"

module ToNil
  module ObjectExtension
    def to_nil
      nil
    end

    def to_nil!
      self.to_nil == nil || raise(Errors::CouldNotNil.new("refused to nil", self))
      nil
    end
  end
end

class Object
  include ToNil::ObjectExtension
end

class BasicObject
  include ::ToNil::ObjectExtension
end