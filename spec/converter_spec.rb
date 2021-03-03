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
  context "with CXX" do
    it "converts to 120" do
      converter = Converter.new
      expect(converter.convert("CXX")).to eq(120)
    end
  end
  context "with LXX" do
    it "converts to 70" do
      converter = Converter.new
      expect(converter.convert("LXX")).to eq(70)
    end
  end
  context "with MCM" do
    it "converts to 1900" do
      converter = Converter.new
      expect(converter.convert("MCM")).to eq(1900)
    end
  end
end
