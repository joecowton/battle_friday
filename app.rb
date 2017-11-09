require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1hp = 100
    @player2hp = 100
    erb(:play)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

get '/AttackP2' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:attack)
  end

  run! if app_file == $0
end
