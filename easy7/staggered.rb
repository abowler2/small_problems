def staggered_case(string)
  count = 1
  staggered = string.chars.map do |letter|
    count +=1
    if count.even?
      letter.upcase
    else
      letter.downcase
      end
  end
  staggered.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'