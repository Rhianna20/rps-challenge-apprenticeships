require 'sinatra/base'
require './lib/start'
require './lib/computer'
# Game controleer

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/enter_name' do
    session[:playername] = params[:playername]
    puts params
    redirect '/play_game'
  end

  get '/play_game' do
    @start = Start.new(session)

    erb :play_game
  end
  
  post '/play_game' do
    session[:playerchoice] = params[:shape].downcase.to_sym
    session[:computer_choice] = Computer.new.shape
    puts params
    redirect '/play_game'
  end


  run! if app_file == $0
end
