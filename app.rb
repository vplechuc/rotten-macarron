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


post '/new' do
  haml :new
end

post "/add" do
  @movietmp=Movie.new
  @movietmp.title=params[:title]
  @movietmp.description=params[:description]
  @movietmp.rating=params[:rating]
  @movietmp.release=params[:release]
  @movietmp.save
  redirect "/"
end

not_found do
  "Oh! No no no"
end