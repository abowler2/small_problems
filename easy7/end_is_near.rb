def penultimate(string)
  string_array = string.split
  string_array[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'