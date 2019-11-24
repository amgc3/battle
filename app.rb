require 'sinatra/base'
require 'sinatra'
require './lib/player'
# enable :sessions
class Battle < Sinatra::Base
enable :sessions
get '/' do
  erb(:index)
end

post '/names' do
  # session[:p1_name] = params[:p1_name]
  # session[:p2_name] = params[:p2_name]
  # we use global variables to store sessions
  $player1 = Player.new(params[:p1_name])
  $player2 = Player.new(params[:p2_name])
  redirect '/play'
end

get '/play' do
  @player1 = $player1
  @player2 = $player2
  erb(:play)
end

# I'm using a GET request with the /attack path
# because I'm not changing the state of the program.

get '/attack' do
  @player1 = $player1
  @player2 = $player2
  @player1.attack(@player2)
  erb(:attack)
end
# start the server if ruby file executed directly
  run! if app_file == $0
end
