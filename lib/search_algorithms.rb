class SearchAlgorithms
	def initialize(arr)
		@arr = arr
		@arr_length = @arr.length
	end

	def binary_search(value)
		first = 0
		last = @arr_length- 1
		
		while first <= last
			i = (first + last) / 2
			 if @arr[i] == value
				return value
			elsif @arr[i] > value
				last = i - 1
			elsif @arr[i] < value
				first = i + 1
			end
		end
		return -1
	end

	def linear_search(value)
		for i in 0..@arr_length
			 return value if @arr[i] == value
		end
		return -1
	end

	def fibonacci_search(value)
		fibMMm2 = 0
		fibMMm1 = 1
		fibM = fibMMm2 + fibMMm1

		while fibM < @arr_length do
			fibMMm2 = fibMMm1
			fibMMm1 = fibM
			fibM = fibMMm2 + fibMMm1
		end
		offset = -1

		while fibM > 1 do

			i = [offset+fibMMm2, @arr_length-1].min
	
			if @arr[i] < value
					fibM = fibMMm1
					fibMMm1 = fibMMm2
					fibMMm2 = fibM - fibMMm1
					offset = i
			elsif @arr[i] > value
				fibM = fibMMm2
				fibMMm1 = fibMMm1 - fibMMm2
				fibMMm2 = fibM - fibMMm1
			else
				return i
			end
		end

		if fibMMm1 && @arr[@arr_length-1] == value
			return @arr_length-1
		end
		return -1
	end

	def missing_number
		total = (@arr_length + 1)*(@arr_length+2)/2
		sum_of_a = @arr.sum
		return total - sum_of_a
	end

	def jump_search(value)
		step = Math.sqrt(@arr_length)
		prev = 0

		while @arr[[step, @arr_length].min] < value do 
			prev = step
			step+=Math.sqrt(@arr_length)
			return -1 if prev >= @arr_length
		end

		while @arr[prev] < value do
			prev+=1
			return -1 if prev == [step, @arr_length].min
		end
		
		if @arr[prev] == value
			return value
		end
		return -1
	end
end