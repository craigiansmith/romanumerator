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
  context "with MCML" do
    it "converts to 1950" do
      converter = Converter.new
      expect(converter.convert("MCML")).to eq(1950)
    end
  end
  context "with MCMLXXX" do
    it "converts to 1980" do
      converter = Converter.new
      expect(converter.convert("MCMLXXX")).to eq(1980)
    end
  end
  context "with MCMLXXV" do
    it "converts to 1975" do
      converter = Converter.new
      expect(converter.convert("MCMLXXV")).to eq(1975)
    end
  end
end
