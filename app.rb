require "sinatra"
require_relative 'linebot'
require_relative "models/user"
require_relative "models/event"

require_relative "lib/gomi"
require_relative "lib/moenai_gomi"
require_relative "lib/gomi"



set :database, {adapter: "sqlite3", database: "app.sqlite3"}

get "/" do
  
end

post '/webhook/' do
  puts request.body.read
end

get '/test-enpoints/' do
  require_relative "lib/gomi"
  require_relative "lib/moenai_gomi"
  require_relative "lib/kane"
end

