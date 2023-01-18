require 'text_verifier'

RSpec.describe do
  it "returns true" do
    expect(text_verifier("Hello, my name is Hande.")).to eq true
  end
end