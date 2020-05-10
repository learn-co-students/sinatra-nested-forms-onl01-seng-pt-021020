# require './environment'

# module FormsLab
#   class App < Sinatra::Base

#     # code other routes/actions here
#     get '/' do 
#       erb :root
#     end

#     get '/new' do
#       erb :'pirates/new'
#     end

#     post '/pirates'
#       @pirate = Pirate.new(params[:pirate])

#       params[:pirate][:ships].each do |details|
#         Ship.new(details)
#       end

#       @ships = Ship.all

#       erb :'pirates/show'
#     end
#   end
# end

require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do

      @pirates = Pirate.new(params[:pirate])
 
      params[:pirate][:ships].map {|details| Ship.new(details)}
      
     
      @ships = Ship.all
      erb :'pirates/show'
      # binding.pry
    end

  end
end