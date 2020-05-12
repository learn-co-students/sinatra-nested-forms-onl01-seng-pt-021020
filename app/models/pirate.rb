class Pirate
   attr_accessor :name, :weight, :height
   PIRATES = []
    def initialize(params) #params is a hash
     @name = params[:name] #calls the name value
     @weight = params[:weight] #calls the weight value
     @height = params[:height]  #calls the height value
     PIRATES << self
    end 
    
    def self.all
      PIRATES
    end    
end