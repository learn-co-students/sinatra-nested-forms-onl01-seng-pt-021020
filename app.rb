require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end #shows the README 
  
    get '/new' do 
      erb :'/pirates/new' 
    end #renders the form where user can submit pirate and ship info 
    
    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |attributes|
        Ship.new(attributes)
      end 
      @ships = Ship.all
      erb :'pirates/show' 
    end #Processes and displays the user's pirates and ships
    #Creates new pirate using info in params
    

  end
end
