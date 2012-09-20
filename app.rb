require 'rubygems'
require 'sinatra'
require 'haml'

require File.join(File.dirname(__FILE__), 'models/movie')



get '/' do
 @movie = Movie.all()
 haml :index
end


get "/favicon.ico" do
  ""
end

not_found do
  "Oh! No no no"
end