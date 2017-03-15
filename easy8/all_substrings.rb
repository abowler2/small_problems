def substrings_at_start(string)
  substring_array = []
  1.upto(string.size) do |sub|
    substring_array << string.slice(0, sub)
  end
  substring_array
end

def substrings(string)
  result = []
  0.upto(string.size).each do |index|
    sub_string = string[index..-1]
    result.concat(substrings_at_start(sub_string))
  end
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]