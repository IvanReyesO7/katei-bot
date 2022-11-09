require "sinatra"
require_relative 'linebot'
require_relative "models/user"
require_relative "models/event"


set :database, {adapter: "sqlite3", database: "app.sqlite3"}

get "/" do
  
end

post '/webhook/' do
  puts request.body.read
end
