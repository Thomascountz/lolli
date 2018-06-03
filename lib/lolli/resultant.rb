module Lolli
  class Resultant
    attr_reader :expected, :actual, :result
    def initialize(expected:, actual:, result:)
      @expected = expected
      @actual = actual
      @result = result
    end
  end
end
