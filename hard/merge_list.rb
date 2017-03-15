def merge(arr1, arr2)
  merged_array = Array.new
  index2 = 0

  arr1.each do |value|
    while index2 < arr2.size && arr2[index2] <= value
      merged_array << arr2[index2]
      index2 += 1
    end
    merged_array << value
  end
  merged_array.concat(arr2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
