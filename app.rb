require 'sinatra/base'
# Game controleer

class RockPaperScissors < Sinatra::Base
  set :session_secret, 'super secret'



  get '/' do
  
    erb :index
  end

  run! if app_file == $0

 get '/welcome' do
erb :index 
 end

  post '/play' do
    @player1 = params[:player1]
    puts params
   
    erb :play_game
  end
get '/play_game' do
  
erb :play_game
end
  
 

end



