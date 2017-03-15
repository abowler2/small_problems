=begin
Notes:
  - 1000 switches in off position
  - first round toggles all on
  - second round toggles 2, 4, 6, etc.
  - third round toggles 3, 6, 9, etc.
  - output: return only those positions in which lights are still on

Example:
  Example with 5 lights:

  round 1: every light is turned on
  round 2: lights 2 and 4 are now off; 1, 3, 5 are on
  round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
  round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
  round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
  The result is that 2 lights are left on, lights 1 and 4.

Data Structure:
  - loop 
  - array
  - iterator

Algorithm:
  - create an array with all numbers from 1 to MAX_VALUE
  - loop through the array 
     - evaluate the elements that are the multiples of the round number
     - begin by turning all elements to 'on' position
     - switch the value at the indexes matching the multiples of the round number
  - return array with elements still in 'on' position at the end of the loop

=end
NUMBER_OF_LIGHTS = 1000

lights = Array.new(NUMBER_OF_LIGHTS, false)
lights_on = []

1.upto(NUMBER_OF_LIGHTS) do |round|
  lights = lights.map!.with_index do |value, index|
    ((index + 1) % round == 0) ? !value : value
  end
end

lights.each_with_index do |value, index|
  lights_on << index + 1 if value == true
end

p lights_on


