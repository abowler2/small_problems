def multisum(num)
  multiples = []
  (0..num).each { |n| multiples << n if n % 3 == 0 || n % 5 == 0 }
  multiples.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168