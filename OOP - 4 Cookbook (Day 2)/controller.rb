require_relative "view"
require 'open-uri'
require 'nokogiri'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.all
    @view.display(recipes)
  end

  def create
    name = @view.the_recipe_name
    description = @view.the_recipe_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    index = @view.recipe_selector
    @cookbook.remove_recipe(index)
  end

  def import
    ingredient = @view.search_recipe
    url = open("https://www.allrecipes.com/search/results/?sort=re&wt=#{ingredient}").read
    doc = Nokogiri::HTML(url)

    recipes = []

    arrecipe = doc.search(".fixed-recipe-card").first(5)
    arrecipe.map do |recipe|
      name = recipe.search(".fixed-recipe-card__h3").text.strip
      description = recipe.search(".fixed-recipe-card__description").text.strip
      rating = recipe.search(".stars").attribute('data-ratingstars').value.to_f.round(2)
      recipe = Recipe.new(name, description, rating)
      recipes << recipe
    end

    @view.display(recipes)

    index = @view.add_search
    @cookbook.add_recipe(recipes[index])
  end
end
