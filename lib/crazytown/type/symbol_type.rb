require 'crazytown/type'

module Crazytown
  module Type
    class SymbolType
      extend Type

      must_be_kind_of Symbol

      def self.coerce(value)
        if value.respond_to?(:to_sym)
          value = value.to_sym
        end
        super
      end
    end
  end
end
