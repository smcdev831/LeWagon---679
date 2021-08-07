# TODO: you can build your horse race program here!
balance = 100
horses = ["Super Stallion", "Haymaker", "Galloping Gal", "Pinto Bean"]

while balance >= 10
  puts "Welcome to the Races!"
  puts "Pick your Winner:"

  horses.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end

  puts "You have selected #{horses[pick - 1]}"

  winner = horses.sample

  puts "The winner is #{winner}"

  if winner == horses[pick - 1]
    balance += 50
    puts "Winner, Winner, Chicken Dinner"
  else
    balance -= 10
    puts "Better luck next time!"
  end

  puts "Your balance is #{balance}"
  puts "Get ready!"
end

puts "See you after payday!"
