=begin

Notes: 
  - a short line of text will print in the middle of a box

Example:

+-----------+
|           |
|   Hello   |
|           |
+-----------+

Data structure:
  - string

Algorithm:
  - create a basic box using string length 
  - print the string in the middle row

=end

def print_in_box(string)
  line_1 = '+-' + ('-' * string.length) + '-+'
  line_2 = '| ' + (' ' * string.length) + ' |'
  
  puts line_1
  puts line_2
  puts '| ' + string + ' |'
  puts line_2
  puts line_1
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
