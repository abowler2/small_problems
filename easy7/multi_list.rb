def multiply_list(array1, array2)
  sum = 0
  array1.zip(array2).map { |num| num[0] * num[1]}
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]