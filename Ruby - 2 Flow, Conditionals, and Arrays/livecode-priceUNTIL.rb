puts "What's your price? (1-5)"

price = gets.chomp.to_i
right_price = rand(1..5)

until price == right_price
  puts "Not correct, guess again"
  price = gets.chomp.to_i
  tries += 1
end

puts  "Congrats! You guessed the correct price of #{right_price} dollars. You took #{tries} tries"
