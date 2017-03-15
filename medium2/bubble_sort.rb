def bubble_sort!(array)
  length = array.length
  swap = true

  while swap 
    swap = false
    0.upto(length - 2) do |num|
      if array[num] > array[num + 1]
         array[num], array[num + 1] = array[num + 1], array[num]
         swap = true
      end
    end
  end
  array
end

p array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)