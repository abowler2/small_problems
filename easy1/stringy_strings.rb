def stringy(num)
  numbers = []

  num.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further exploration

def stringy(num, start = 1)
  numbers = []

  num.times do |index|
    if start == 1
      number = index.even? ? 1 : 0
      numbers << number
    else
      number = index.even? ? 0 : 1
      numbers << number
    end
  end

  numbers.join
end

puts stringy(6, 0)
puts stringy(9)