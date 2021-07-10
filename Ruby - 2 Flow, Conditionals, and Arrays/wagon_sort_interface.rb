require_relative "wagon_sort"
students = []

loop do
  puts "Type the name of the student you want to add or press enter to Exit"
  name = gets.chomp

  break if name == ""

  students << name if name != ""
end


# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
if students.length == 1
  puts "Congratulations! Your Wagon has #{students.length} student:"
  puts students[0]}"
else
  puts "Congratulations! Your Wagon #{students.length} students:"
  puts "#{wagon_sort(students)[0...-1].join(', ')} and #{wagon_sort(students).last}"
end
