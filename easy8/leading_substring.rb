def substrings_at_start(string)
  substring_array = []
  1.upto(string.size) do |sub|
    substring_array << string.slice(0, sub)
  end
  substring_array
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']