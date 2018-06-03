module Lolli
  class TextReporter
    def initialize(output: $stdout)
      @output = output
    end

    def report(resultant:, description:)
      output.puts description
      output.puts "\s\s#{resultant.result}"
      unless resultant.result
        output.puts "\s\s\s\sExpected: #{resultant.expected}"
        output.puts "\s\s\s\sActual: #{resultant.actual}"
      end
      output.puts "\n"
    end

    private

    attr_reader :output
  end
end
