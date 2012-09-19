require "rubygems"
require "sinatra"
require "haml"

get '/' do
  haml :index
end


get "/favicon.ico" do
  ""
end

not_found do
  "Oh! No no no"
end