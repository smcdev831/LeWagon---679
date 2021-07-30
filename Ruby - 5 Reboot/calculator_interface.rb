puts "Hi, User!"

until userAnswer == "N"
  puts "What is the first number?"
  n1 = gets.chomp.to_i
  puts "What is your second number?"
  n2 = gets.chomp.to_i
  puts "What mathmatical function are you using?"
  mf = gets.chomp

  answer = 0

  if mf == "+"
    answer = n1 + n2
  elsif mf == "*"
    answer = n1 * n2
  elsif mf == "/"
    answer = n1 / n2
  elsif mf == "-"
    answer = n1 - n2
  else
    return "That's not a mathematical function!"
  end

  if answer != 0
    puts "Your answer is #{answer}"
  end

  puts "Do you want to calculate again?"
  userAnswer = gets.chomp
end

  puts "Thanks for caluclating!"
