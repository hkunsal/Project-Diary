require 'string_checker'

RSpec.describe do
  it "checks the string and returns true if the string includes #TODO" do
    expect(string_checker("Today's #TODO is to wash the dishes.")).to eq true
  end
end