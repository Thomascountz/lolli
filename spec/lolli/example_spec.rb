require "lolli/example"
require "lolli/resultant"

RSpec.describe Lolli::Example do
  describe ".example" do
    it "reports resultant to the reporter" do
      resultant = instance_double(Lolli::Resultant)
      description = "foo"
      reporter = instance_double(Lolli::TextReporter)

      Lolli::REPORTER = reporter
      allow(resultant).to receive(:result)
      allow(resultant).to receive(:expected)
      allow(resultant).to receive(:actual)

      expect(reporter).to receive(:report).with(resultant: resultant, description: description)

      b = Proc.new { resultant }
      Lolli::Example.example(description, &b)
    end
  end
end
