require 'romanumerator'

RSpec.describe Adder, "#count" do
 context "with one I" do
  it "counts the value one" do
    adder = Adder.new
    expect(adder.count('I')).to eq(1)
  end
 end
 context "with III" do
   it "counts the value 3" do
     adder = Adder.new
     expect(adder.count('III')).to eq(3)
   end
 end
 context "with V or U" do
   it "counts the value 5" do
     adder = Adder.new
     expect(adder.count('V')).to eq(5)
     expect(adder.count('U')).to eq(5)
   end
 end
 context "with X" do
   it "counts the value 10" do
     adder = Adder.new
     expect(adder.count('X')).to eq(10)
   end
 end
 context "with L" do
   it "counts the value 50" do
     adder = Adder.new
     expect(adder.count('L')).to eq(50)
   end
 end
 context "with C" do
   it "counts the value 100" do
     adder = Adder.new
     expect(adder.count('C')).to eq(100)
   end
 end
 context "with D" do
   it "counts the value 500" do
     adder = Adder.new
     expect(adder.count('D')).to eq(500)
   end
 end
end 
