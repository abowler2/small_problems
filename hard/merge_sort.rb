def merge_sort(array)
return array if array.size == 1

half = array.size / 2
left_side = merge_sort(array[0...half])
right_side = merge_sort(array[half...array.length])

merge(left_side, right_side)
end

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
 


p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) \
                  == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) \
                  == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
