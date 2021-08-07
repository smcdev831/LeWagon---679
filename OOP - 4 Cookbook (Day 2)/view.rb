class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} #{recipe.name} #{recipe.rating}"
    end
  end

  def recipe_selector
    puts "Which recipe would you like to remove?"
    gets.chomp.to_i - 1
  end

  def the_recipe_name
    puts "What is the name of the recipe?"
    gets.chomp
  end

  def the_recipe_description
    puts "What is the description of the recipe?"
    gets.chomp
  end

  def search_recipe
    puts "What are you cooking with?"
    gets.chomp
  end

  def add_search
    puts "Which recipe would you like to add to the database?"
    gets.chomp.to_i - 1
  end
end
