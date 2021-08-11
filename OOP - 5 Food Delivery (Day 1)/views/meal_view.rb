class MealsView
  def display(meals)
    meals.each_with_index do |meal, index|
      puts "A Number #{index + 1} #{meal.name} is #{meal.price}"
    end
  end

  def ask_price
    puts "What is the price of the meal?"
    gets.chomp
  end

  def ask_name
    puts "What is the name of the meal?"
    gets.chomp
  end
end
