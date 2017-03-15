def center_of(string)
  array = string.chars
  if string.size.odd?
    array.slice(string.size/2, 1).join
  else
    array.slice((string.size/2) - 1, 2).join
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'