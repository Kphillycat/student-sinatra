require 'sinatra/base'
require './lib/thing'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/' do
      "hello world!"
    end

    get '/hello-world' do
    	@thing = Thing.new("Ashley", 6)
    	erb :hello
    end

    get '/artists' do
		@artists = ["Macklemore", "Childish Gambino", "Frank Sinatra", "Rebecca Black"]
		erb :artists
	end
  end
end