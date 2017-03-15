def prompt1(msg)
  puts "==> Enter the #{msg} number:"
end

def prompt2(msg)
  puts "==> #{msg}"
end

prompt1 "first"
num1 = gets.chomp.to_i

prompt1 "second"
num2 = gets.chomp.to_i

prompt2 "#{num1} + #{num2} = #{num1 + num2}"
prompt2 "#{num1} - #{num2} = #{num1 - num2}"
prompt2 "#{num1} * #{num2} = #{num1 * num2}"
prompt2 "#{num1} / #{num2} = #{num1 / num2}"
prompt2 "#{num1} % #{num2} = #{num1 % num2}"
prompt2 "#{num1} ** #{num2} = #{num1 ** num2}"