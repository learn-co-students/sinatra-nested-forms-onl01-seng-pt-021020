class Pirate
  attr_accessor :name, :weight, :height
  def initialize(pirate)
    @name = pirate[:name]
    @height = pirate[:height]
    @weight = pirate[:weight]
  end
end