#array
students = ["Peter", "Mary", "George", "Emma"]
students_age = [24, 25, 22, 20]

#Create
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


#Read
p students_age ["George"]
p students_age [:Mary]


#Update
students_age["Peter"] = 30

students_age = {
"Peter": age: 24, location: mexico
"Mary": 25,
"George": 22,
"Emma": 20
}

p students_age
previous_info = students_age["Peter"]
previous_info[:location] = "usa"
p students_age


#Delete
students_age.delete("George")
p students_age
