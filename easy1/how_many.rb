def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |vehicle|
    occurrences[vehicle] = array.count(vehicle)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
