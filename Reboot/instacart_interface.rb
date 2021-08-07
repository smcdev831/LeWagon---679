# TODO: you can build your instacart program here!
groceries = {"apple" => 1, "tofu" => 5, "cheese" => 3, "bell peppers" => 1, "avocado" => 2, "jalapeno" => 1, "cilantro" => 1, "tortillas" => 3}
more = "Y"
selections = []
quantity = []
pricing = 0

puts "Welcome to SMCornerStore"

while more == "Y"
  puts "We have the following items for sale today"

  groceries.each do |key, value|
    puts "#{key} - #{value}"
  end

  puts "What would you like?"

  choice = gets.chomp
  selections << choice
  pricing += groceries[choice]

  puts "1 #{choice} is $#{groceries[choice]}"

  puts "How many would you like?"
    quantity = gets.chomp.to_i

  puts "Would you like anything esle? Y/N"

  more = gets.chomp.upcase
end

puts "You ordered #{selections} for a total of $#{pricing}"

puts "Thank you for shopping at SMCornerStore"
