=begin
Notes:
  - input: number
  - output: next featured number from the number given
  - Featured Number = an odd number, multiple of 7, 
                      whose digits occur exactly once each

Examples:
  - 49 is featured, but 98 is not because it is not odd, 
    and 133 is not because 3 appears twice

Data structure:
  - numbers

Algorithm:
  - iterate from given number until first featured number found
  - check each number to see if featured
  - return first number to meet criteria
=end

def featured(num)
  num += 1
  num += 1 until num % 7 == 0 && num.odd?

  loop do
    digit_check = num.to_s.split('')
    return num if digit_check.uniq == digit_check
    num += 14
    break if num >= 9_876_543_210
  end 
  "There is no possible number that fulfills those requirements"
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999)
