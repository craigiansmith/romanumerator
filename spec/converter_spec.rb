require 'romanumerator'

RSpec.describe Converter, "#convert" do
  context "with IV" do
    it "converts to 4" do
      converter = Converter.new
      expect(converter.convert("IV")).to eq(4)
    end
  end
end
