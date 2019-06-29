require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do
    #binding.pry
    code = params[:user_phrase]
    @piglatin = PigLatinizer.new
    #binding.pry
    @latin = @piglatin.piglatinize(code)
    @piglatin = Piglatinizer.new
    @latin = piglatin.piglatinize(code)
    erb :piggy_page
  end
end