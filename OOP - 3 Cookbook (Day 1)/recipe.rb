class Recipe
  attr_reader :name, :description
  def initialize(name, description)
    @name = name
    @description = description
  end
end

class Cookbook
  def initialize(csv_file_path)
    all
    add_recipe(recipe)
    remove_recipe(recipe_index)
  end
end
