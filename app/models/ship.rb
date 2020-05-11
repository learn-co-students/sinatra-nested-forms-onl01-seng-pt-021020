class Ship
  attr_reader :name, :type, :booty


  def self.clear

  end


  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
  end

end
