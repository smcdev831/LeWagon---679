interface.rb
Last month
Jul 3
S
You uploaded an item
Unknown File
interface.rb
# TODO: you can build your christmas list program here!
options = ["list", "add", "delete", "mark", "quit"]
thelist = {"Christmas Wishes" => 0}
selection = ""

puts "Welcome to your Christmas gift list!"

while selection != "quit"
  puts "What would you like to do? You can #{options}"
  selection = gets.chomp
  case selection
  when "list"
    thelist.each do |key, value|
      puts key
    end
  when "add"
    puts "What item would you like to add?"
    choice = gets.chomp
    thelist["Christmas Wishes"] = choice
    puts "Has this been purchased yet? Y/N"
    purchase = gets.chomp
    if purchase == "Y"
      thelist[choice] = 1
    else thelist[choice] = 0
    end
  when "delete"
    puts "What would you like to remove from the list?"
     removal = gets.chomp
      thelist.delete(removal)
  when "mark"
    puts "Which item would you like to check off?"
    thelist.each_with_index do |key, value|
      puts key
    checkoff = gets.chomp
    if checkoff = true
      puts "#{thelist[key]} has been checked off your list!"
    else
      puts "Oops! That wasn't on the list"
    end
    if checkoff == true
      then thelist.each do |value|
        value = 0
      else
        value = 1
    end
  when "quit"
    break
  else
    puts "What would you like to do next? #{options}"
  end
end

puts "Thank you for using Christmas List"
