BURGER = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Big Mac" => 540,
  "McChicken" => 350
}

SIDE = {
  "French Fries" => 230,
  "Salad" => 15
}

BEVERAGE = {
  "Coca Cola" => 150,
  "Sprite" => 150
}

def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this mc Donald order
  BURGER[burger] + SIDE[side] + BEVERAGE[beverage]
end
