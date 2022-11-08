require "sinatra"
require_relative 'linebot'
Dir["/models/*.rb"].each {|file| require_relative file }

set :database, {adapter: "sqlite3", database: "app.sqlite3"}

get "/" do
  "<h1>Hello world! #{User.all}"
end

post '/webhook/' do
  puts request.body.read
end
