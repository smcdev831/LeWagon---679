require_relative "animal"
class Chicken < Animal
  attr_reader :eggs
  def initialize(gender)
    super()
    @gender = gender
    @eggs = 0
  end
  def talk
    if @gender == 'male'
      return "cock-a-doodle-doo"
    else
      return "cluck cluck"
    end
  end
  def feed!
    @eggs += 2 if @gender == 'female'
    super
  end
end
