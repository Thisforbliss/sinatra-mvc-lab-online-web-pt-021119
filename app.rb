require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/' do
    code = params[:code]
    @piglatin = Piglatin.new(code)
    erb :piggy_page
  end
end