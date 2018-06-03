require "lolli/matchers/equality_matchers"
require "lolli/resultant"

RSpec.describe Lolli::EqualityMatchers do
  include Lolli::EqualityMatchers
  describe ".assert_equals" do
    it "returns a truthy resultant if expected and actual are equal" do
      expected = true
      actual = true

      result = assert_equals(expected: expected, actual: actual)

      expect(result).to be_a Lolli::Resultant
      expect(result.result).to be_truthy
    end
  end
end
