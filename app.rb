require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    get '/new' do
      erb :'pirates/new'
    end 
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ship_1 = Ship.new(params[:pirate][:ships][0])
      @ship_2 = Ship.new(params[:pirate][:ships][1])
    
      erb :'pirates/show'
    end
  end
end


#Make a nested form (this should probably have html <label>s so it makes sense to a user). 
#This form will be creating three objects (one instance of the Pirate class, and two instances of the Ship class). 
#Remember, you'll need to build a corresponding controller action to load this page. 
#Your form should POST to the route '/pirates'.

