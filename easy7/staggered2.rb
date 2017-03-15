def staggered_case(string)
 count = 1
 staggered = string.chars.map do |letter|
    count += 1 if letter =~ /[a-z]/i
      if count.even?
        letter.upcase
      else
        letter.downcase
      end
  end
  staggered.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'