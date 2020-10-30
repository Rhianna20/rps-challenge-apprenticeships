require 'sinatra/base'
# Game controleer

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  run! if app_file == $0


end
