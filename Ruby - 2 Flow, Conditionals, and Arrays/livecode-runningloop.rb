running = true

while running
  puts "Hello, do you want to quit the loop?"
  user_input = gets.chomp
  running = !(user_input == "yes")
end
