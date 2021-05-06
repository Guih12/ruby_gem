require 'search_algorithms'

RSpec.describe SearchAlgorithms do
	let(:arr) { [1,2,4,5,8,9,10,30] } 
	let(:search) { SearchAlgorithms.new(arr) } 

	context "testing search binary" do
		let(:value) { 8 } 
		let(:value_not_found) { 90 } 
			it "should return value if found" do
			expect(search.binary_search(value)).to eq(8) 
	end

		it "should return -1 if value is not found" do
			expect(search.binary_search(value_not_found)).to eq(-1) 
		end
	end

	context "testing search linear" do
		let(:value) { 10 } 
		let(:value_not_found) { 40 } 

		it "should return value if found" do
			expect(search.linear_search(value)).to eq(10) 
		end

	it "should return -1 if value not found" do
		expect(search.linear_search(value_not_found)).to eq(-1) 
		end
	end

	context "testing fibonnaci search" do
		let(:value) { 10 } 
		let(:value_not_found) { 40 } 
		it "should return value if found" do
			expect(search.fibonacci_search(value)).to be > 1 
		end

		it "should return -1 if value not found" do
			expect(search.fibonacci_search(value_not_found)).to eq(-1) 
		end
	end

	context "testing find missing number" do
		let(:arr_one) { [1, 2, 4, 5, 6] }
		let(:arr_two) { [7, 2, 3, 1, 4, 6] } 
		let(:search) { SearchAlgorithms.new(arr_one) } 
		it "should return value 3 sum of array" do
			expect(search.missing_number).to eq(3)
		end
			
		it "should return value 5 sum of array" do
			arr = [7, 2, 3, 1, 4, 6]
			search =  SearchAlgorithms.new(arr)
			expect(search.missing_number).to eq(5)
		end
	end

	context "testing jump search " do
		let(:arr) { [1, 2, 4, 5, 6] } 
		let(:search) { SearchAlgorithms.new(arr) } 
			it "should return value if found" do
			value = 5
			expect(search.jump_search(value)).to eq(value) 
		end
	end
end