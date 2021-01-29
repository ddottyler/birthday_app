require 'sinatra/base'
require './lib/birthday_check.rb'

class Birthday < Sinatra::Base

  enable :sessions

  get '/test' do 
    "Hello world!"
  end

  get '/' do 
    erb(:home)
  end

  post '/details' do 
    session[@output] = BirthdayCheck.new(params[:name], params[:day], params[:month])
    redirect '/output'
  end

  get '/output' do 
    @output = session[@output]
    erb(:output)
  end

  run! if app_file == $0 
end