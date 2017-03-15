def triangle(n)
  star = '*'
  space = ' '
  star_index = 1
  space_index = (n - 1)

  while star_index <= n
    puts (space * space_index) + (star * star_index)
    space_index -= 1
    star_index += 1
  end
end

  triangle(5)
  triangle(9)
  