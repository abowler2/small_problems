def oddities(array)
  odd_array = []
  array.each_with_index { |num, index| odd_array << num if index.even? }
  odd_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
