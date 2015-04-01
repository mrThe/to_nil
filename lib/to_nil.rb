require "to_nil/version"

module ToNil
  module ObjectExtension
    def to_nil
      nil
    end
  end
end

class Object
  include ToNil::ObjectExtension
end
