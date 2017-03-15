=begin
  Notes:
    - input = array of numbers between 0-19
    - output = array of numbers sorted by alpha value

  Test / example:
    - alphabetic_number_sort((0..19).to_a) == [
    8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
    6, 16, 10, 13, 3, 12, 2, 0
    ]
  
  Data Structure:
    - array for numbers
    - hash for alpha number values

  Algorithm:
    - convert numbers to alpha value
    - map numbers by alpha value order
    - return as number value in correct alpha order

=end
LETTERS = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four',
           5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 
           10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 
           14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 
           18 => 'eighteen', 19 => 'nineteen' }

# using Enumerable#sort_by
#def alphabetic_number_sort(array)
#  array.sort_by { |num| LETTERS.fetch(num) }
#end

# using Enumerable#sort
def alphabetic_number_sort(array)
  array.map { |num| LETTERS[num]}.sort.map { |word| LETTERS.key(word) }
end
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
