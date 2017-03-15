DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  string = ''
  loop do 
    num, remainder = num.divmod(10)
    string.prepend(DIGITS[remainder])
    break if num == 0
  end
    string
end

def signed_integer_to_string(num)
  return '0' if num == 0
  if num > 0
    '+' + integer_to_string(num.abs)
  else
    '-' + integer_to_string(num.abs)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
