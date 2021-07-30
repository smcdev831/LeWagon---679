class OrangeTree
  attr_reader :age, :height, :fruits

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes!
    unless dead?
      @age += 1
      @height += 1 until @height == 10

      fruit_production
      life_status
    end
  end

  def dead?
    return @dead
  end

  def life_status
    if @age <= 50
      @dead = false
    elsif @age > 50 && @age <= 100
      @dead = [true, false].sample
    else
      @dead = true
    end
  end

  def fruit_production
    if @age >= 10 && @age < 15
      @fruits = 200
    elsif @age > 5 && @age < 10
      @fruits = 100
    else
      @fruits = 0
    end
  end

  def pick_a_fruit!
    @fruits -= 1 if @fruits.positive? && @dead == false
  end
end
