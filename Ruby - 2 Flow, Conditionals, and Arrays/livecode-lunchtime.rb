hour = Time.now.hour

if hour < 12
  puts "Good morning!
elsif hour >= 20
  puts "Good night!"
elsif hour > 12
  puts "Good afternoon!"
else
  puts "Lunch Time!"
end
