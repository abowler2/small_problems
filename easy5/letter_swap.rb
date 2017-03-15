def swap_first_last(string)
  string[0], string[-1] = string[-1], string[0]
  string
end

def swap(string)
  result = string.split(' ').map { |word| swap_first_last(word)}
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'