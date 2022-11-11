require "sinatra"
require_relative 'linebot'
require_relative "models/user"
require_relative "models/event"

require_relative "lib/gomi"



set :database, {adapter: "sqlite3", database: "app.sqlite3"}

get "/" do
  Gomi.send_message
end

post '/webhook/' do
  puts request.body.read
end
