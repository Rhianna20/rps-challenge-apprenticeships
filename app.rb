require 'sinatra/base'
# Game controleer

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:player1] = params[:player1]
    puts params
    redirect 'play_game'
  end

get '/play_game' do
  @player1 = session[:player1]
  @shape = session[:shape]
 @computer_choice = session[:computer_choice]
  erb :play_game
end
  
post '/play_game' do
  session[:shape] = params[:shape]
  session[:computer_choice] = :rock 
  redirect '/play_game'
end


run! if app_file == $0
end

