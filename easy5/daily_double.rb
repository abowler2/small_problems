=begin

Notes:
  - input: string with duplicate letters
  - output: string with single consecutive letters

Example:
  - crunch('daiiily dooouuuble') => 'daily double'

Data structure:
  - String

Algorithm:
  - iterate through the text to check if consecutive letters are the same
  - eliminate the duplicate letters   

=end

# My solution using String#squeeze
def crunch(string)
  string.squeeze
end

# solution without using Array#squeeze
def crunch(string)
  index = 0
  text = ''

  while index <= string.length - 1
    text << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  text
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
