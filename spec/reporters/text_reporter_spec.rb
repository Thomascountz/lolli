require "lolli/reporters/text_reporter"
require "lolli/resultant"

RSpec.describe Lolli::TextReporter do
  describe "#report" do
    context "when the test passed" do
      it "reports the resutant and description" do
        expected = true
        actual = true
        result = true
        description = "the test passed"
        resultant = Lolli::Resultant.new(expected: expected, actual: actual, result: result)

        output = StringIO.new

        expected = "the test passed\n\s\strue\n\n"

        text_formatter = Lolli::TextReporter.new(output: output)

        text_formatter.report(resultant: resultant, description: description)

        expect(output.string).to eq expected
      end
    end
    context "when the test failed" do
      it "reports the resutant and description" do
        expected = true
        actual = false
        result = false
        description = "the test failed"
        resultant = Lolli::Resultant.new(expected: expected, actual: actual, result: result)

        output = StringIO.new

        expected = "the test failed\n\s\sfalse\n\s\s\s\sExpected: true\n\s\s\s\sActual: false\n\n"

        text_formatter = Lolli::TextReporter.new(output: output)

        text_formatter.report(resultant: resultant, description: description)

        expect(output.string).to eq expected
      end
    end
  end
end
