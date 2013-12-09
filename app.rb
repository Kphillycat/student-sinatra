require 'sinatra/base'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/' do
      "hello world!"
    end

    get '/hello-world' do
    	@random_numbers = []
    	20.times do |i|
    		@random_numbers << i+1
    	end
    	erb :hello
    end

    get '/artists' do
		@artists = ["Macklemore", "Childish Gambino", "Frank Sinatra", "Rebecca Black"]
		erb :artists
	end
  end
end