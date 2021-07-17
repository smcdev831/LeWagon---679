#array
students = ["Peter", "Mary", "George", "Emma"]
students_age = [24, 25, 22, 20]

#standard
students_age = {
"Peter": 24,
"Mary": 25,
"George": 22,
"Emma": 20
}

#rocket
students_age = {
"Peter" => 24,
"Mary" => 25,
"George" => 22,
"Emma" => 20
}

#symbol
students_age = {
:Peter => 24,
:Mary => 25,
:George => 22,
:Emma => 20
}

students_age.each do |name, age|
  puts "#{name}, #{age}"
end
