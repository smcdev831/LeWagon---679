puts "Heads or tails?"

input = gets.chomp

computer_choice = ["heads", "tails"].sample

result = computer_choice == input ? "You win!" : "You lose."

puts result
