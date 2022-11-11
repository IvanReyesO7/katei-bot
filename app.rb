require "sinatra"
require_relative 'linebot'
require "sinatra/activerecord"
set :database, {adapter: "sqlite3", database: "app.sqlite3"}

get "/" do
end

post '/webhook/' do
  puts request.body.read
end

get '/test-enpoints/' do

end

