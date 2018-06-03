require_relative "../resultant"

module Lolli
  module EqualityMatchers
    def assert_equals(expected:, actual:)
      result = expected == actual
      Lolli::Resultant.new(expected: expected, actual: actual, result: result)
    end
  end
end
