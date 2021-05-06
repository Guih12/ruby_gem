require 'greedy_algorithms'

RSpec.describe GreedyAlgorithms do
  let(:greedy_algorithm) { GreedyAlgorithms.new }
  
  context "testing minimum sum" do
		let(:arr) {[7, 2, 3, 4, 5, 6]}
		it "return sum value equals 11" do
			expect(greedy_algorithm.min_sum(arr)).to eq(11) 
		end
	end
  context "testing minimum_squere" do
		let(:a) { 13 }
		let(:b) { 29 }  
		it "return value 9" do
			expect(greedy_algorithm.minimum_square(a, b)).to eq(9) 
		end
	end
end