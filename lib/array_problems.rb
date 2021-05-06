class ArrayProblems
  def rearrange(a, size)
    positive = 0
    negative = 1

    while true do
      while positive < size && a[positive] >= 0 do
        positive = positive + 2
      end
      while negative < size &&  a[negative] <= 0 do
        negative = negative + 2
      end

      if positive < size && negative < size
        temp = a[positive]
        a[positive] = a[negative]
        a[negative] = temp
      else
        break
      end
    end
    return a
  end

  def reverse_array(arr, start, final)
    while start < final do 
      arr[start], arr[final] = arr[final], arr[start]
      start = start + 1
      final = final - 1
    end
    arr
  end

  def pr_array(arr, size)
    for i in 0..size
      return arr[i]
    end
  end

  def right_rotate(arr, d, n)
    reverse_array(arr, 0, n - 1)
    reverse_array(arr, 0, d - 1)
    reverse_array(arr, d, n - 1)
  end
end