class GreedyAlgorithms
  def min_sum(value)
    min_val = value.min
    min_val*value.length - 1
  end

  def minimum_square(a, b)
    result = 0
		rem = 0
		a,b = b,a if a < b 

		while b > 0
			result+=(a/b).to_i
			rem = (a%b).to_i
			a = b
			b = rem
		end
		result
  end
end