require 'romanumerator'

RSpec.describe Adder, "#count" do
 context "with one I" do
  it "counts the value one" do
    adder = Adder.new
    expect(adder.count('I')).to eq(1)
  end
 end
end 
