=begin
Notes:
  - input:  array of arrays
  - output: transpose of original array of arrays
  - do not change original array
  - cannot use Array#transpose or Class Matrix

Algorithm:
 - copy elements in corresponding indexes of each array
 - place them in new array


=end

def transpose(array)
  transpose = Array.new(array.size) { Array.new }

  array.size.times do |row|
    array.size.times do |column|
      transpose[row][column] = array[column][row]
    end 
  end
  transpose
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
