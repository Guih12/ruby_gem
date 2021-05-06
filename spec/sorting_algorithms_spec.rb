require 'sorting_algorithms'

RSpec.describe SortingAlgorithms do
	let(:arr) {[2,10,20,30,50,60,120]}
	let(:arr_ordenate) {[2,10,20,30,50,60,120]} 
	let(:sorting_algorithm) { SortingAlgorithms.new(arr) }
	
	context "testing bubble sort" do
		it "should return array ordenate" do
			expect(sorting_algorithm.bubble_sort).to eql(arr_ordenate) 
		end
	end

	context "testing quick_sort" do
    it "should return arr ordernate" do
      expect(sorting_algorithm.quick_sort(arr, 0, arr.length-1)).to eql(arr_ordenate) 
    end
  end

	context "testing select_sort" do
    it "should return arr ordenate" do
      expect(sorting_algorithm.select_sort).to eql(arr_ordenate) 
    end
  end

	context "testing merge_sort" do
    it "should return arr ordernate" do
      expect(sorting_algorithm.merge_sort(arr)).to eql(arr_ordenate) 
    end
  end
end