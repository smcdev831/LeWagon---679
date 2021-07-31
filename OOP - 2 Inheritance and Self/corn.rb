# TODO: code the Corn class
require_relative "crop"
class Corn < Crop
  attr_reader :grains
  def initialize
    @grains = 0
  end
  def water!
    @grains += 10
  end
end
