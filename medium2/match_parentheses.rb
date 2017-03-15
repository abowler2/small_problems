=begin
Notes:
  - input: string
  - output: boolean value based on if balanced parentheses or not
  - parentheses must be properly balance and match '( )' pattern
  - parentheses cannot start with ')'
Examples:
  p balanced?('What (is) this?') == true
  p balanced?('What is) this?') == false
  p balanced?('What (is this?') == false  

Data structure:
  - string

Algorithm:
  - iterate over string
  - check if parentheses are in correct pattern '( )' and that '(' comes first
  - check if parentheses are in correct balance
  - return true if balanced and in correct pattern
  - return false if not balanced

=end

def balanced?(string)
 paren = 0
 string.each_char do |char|
    paren += 1 if char == '('
    paren -= 1 if char == ')'
    break if paren < 0
  end

  paren.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
