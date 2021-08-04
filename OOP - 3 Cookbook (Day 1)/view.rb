class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} #{recipe.name}"
    end
  end

  def recipe_selector
    puts "Which recipe would you like to remove?"
    gets.chomp.to_i - 1
  end

  def the_recipe_name
    puts "What are we cooking?"
    gets.chomp
  end

  def the_recipe_description
    puts "What are the ingredients and steps?"
    gets.chomp
  end
end
