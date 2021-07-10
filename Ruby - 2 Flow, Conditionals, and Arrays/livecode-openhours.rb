hour = Time.now.hour

if (hour > 9 && < 12) || (hour > 14 && < 18)
  puts "The shop is open!"
else
  puts "Sorry, the shop is closed..."
end
