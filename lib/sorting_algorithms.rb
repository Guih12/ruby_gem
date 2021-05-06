class SortingAlgorithms
	def initialize(arr)
		@arr = arr
		@arr_length = @arr.length
	end

	def bubble_sort
		@arr.each do 
			swap_count = 0
			@arr.each_with_index do |a, index|
				break if index == (@arr_length - 1)
				if a > @arr[index+1]
					@arr[index],@arr[index+1] = @arr[index +1], @arr[index]
					swap_count+=1
				end
			end
			break if swap_count == 0
		end
		@arr
	end

	def quick_sort(arr, first, last)
		if first < last
			j = partition(arr, first, last)
			quick_sort(arr, first, j-1)
			quick_sort(arr, j+1, last)
		end
		return arr
	end

	def select_sort
		n = @arr_length-1
		n.times do |i|
			min_index = i 
			for j in (i+1)..n
				min_index = j if @arr[j] < @arr[min_index]
			end
			@arr[i], @arr[min_index] = @arr[min_index], @arr[i] if min_index != i
		end
		@arr
	end

	def merge_sort(arr)
		return arr if arr.length == 1
		mid = arr.length/2

		left = arr[0...mid]
		right = arr[mid..-1]

		sorted_left = merge_sort(left)
		sorted_right = merge_sort(right)

		merge(sorted_left, sorted_right)
	end

	private
	def partition(arr, first, last)
		pivot = arr[last]
		pIndex = first
		i = first
		while i < last 
			if arr[i].to_i <= pivot.to_i
				arr[i], arr[pIndex] = arr[pIndex], arr[i]
				pIndex = pIndex+1
			end
			i+=1
		end
		arr[pIndex], arr[last] = arr[last], arr[pIndex]
		return pIndex
	end

	def merge(left, right)
		result = []
		until left.length == 0 || right.length == 0 do
			result << (left.first <= right.first ? left.shift : right.shift)
		end
		result + left + right
	end
end