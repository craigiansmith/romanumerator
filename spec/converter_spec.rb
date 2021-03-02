require 'romanumerator'

RSpec.describe Converter, "#convert" do
  context "with IV" do
    it "converts to 4" do
      converter = Converter.new
      expect(converter.convert("IV")).to eq(4)
    end
  end
  context "with IX" do
    it "converts to 9" do
      converter = Converter.new
      expect(converter.convert("IX")).to eq(9)
    end
  end
  context "with XI" do
    it "converts to 11" do
      converter = Converter.new
      expect(converter.convert("XI")).to eq(11)
    end
  end
end
