puts "What do you want to do? (Read|Write|Exit)"
action = gets.chomp

case action
when "read"
  puts "You are in READ mode"
when "write"
  puts "You are in WRITE mode"
when "exit"
  puts "Bye Bye"
else
  puts "Wrong action"
end

#puts "You are in READ mode" if action == "read"
