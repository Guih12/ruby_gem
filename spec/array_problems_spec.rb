require 'array_problems'

RSpec.describe ArrayProblems do
  let(:array_problems) { ArrayProblems.new }
	context "testing problem rearrange array" do
    let(:arr) {[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]} 
    let(:output) {[8,9,10,1,2,3,4,5,6,7]}
    it "should return rearragne array " do
      size = arr.length
      expect(array_problems.rearrange(arr, size)).to eql(arr) 
    end
  end

  context "testing problem reverse array" do
    let(:arr) { [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] } 
    let(:output) { [8,9,10,1,2,3,4,5,6,7] }
    let(:length) { arr.length }
    let(:value) { 3 } 
    it "should return reverse array" do
      n = arr.length
      expect(array_problems.right_rotate(arr, value, n)).to eq(output) 
    end
  end

  context "testing problem find Three" do
    let(:arr) { [12,45,1,-1,45,54,23,5,0,-10] }
    let(:output) { [54,45,23] }  
    it "should return new array equals [54, 45, 23] " do
      n = arr.length
      expect(array_problems.find_three(arr, n)).to eq(output)  
    end
  end
  
end