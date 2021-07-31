class Restaurant
  attr_reader :city, :name, :average_rating


  def initialize(city, name)
    @city = city
    @name = name
    @average_rating = 0
  end

  def rate(new_rate)
    @average_rating = (@average_rating + new_rate) / 2
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select do |restaurant|
      restaurant.city == city
    end
  end
end
