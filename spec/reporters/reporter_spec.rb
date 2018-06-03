require "lolli/reporters/reporter"

RSpec.describe Lolli do
  it "has a default reporter" do
    expect(Lolli::REPORTER).not_to be nil
  end
end
