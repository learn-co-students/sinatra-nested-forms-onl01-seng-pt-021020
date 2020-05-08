class Pirate

    attr_accessor :name, :height, :weight

    @@all = []

    def initialize(hash)
        @name = hash[:name]
        @height = hash[:height]
        @weight = hash[:weight]
        @@all << self
    end

    def self.all
        @@all
    end
end