require 'open-uri'
require 'json'

def generate_grid(grid_size)
  random_letters = ('A'..'Z').to_a
  Array.new(grid_size) { random_letters.sample }
end
