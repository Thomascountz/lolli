require "lolli/resultant"

RSpec.describe Lolli::Resultant do
  describe "#expected" do
    it "returns the expected" do
      expected = true
      resultant = resultant_factory(expected: expected)
      expect(resultant.expected).to eq expected
    end
  end

  describe "#actual" do
    it "returns the actual" do
      actual = true
      resultant = resultant_factory(actual: actual)
      expect(resultant.actual).to eq actual
    end
  end

  describe "#result" do
    it "returns the result" do
      result = true
      resultant = resultant_factory(result: result)
      expect(resultant.result).to eq result
    end
  end

  def resultant_factory(expected: nil, actual: nil, result: nil)
    Lolli::Resultant.new(expected: expected, actual: actual, result: result)
  end
end
