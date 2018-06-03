require_relative "reporters/reporter"
require_relative "matchers/equality_matchers"

module Lolli
  class Example
    extend EqualityMatchers
    class << self
      def example(description)
        resultant = yield
        Lolli::REPORTER.report(resultant: resultant, description: description)
      end
    end
  end
end
