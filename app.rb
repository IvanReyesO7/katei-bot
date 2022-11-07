require "sinatra"
require "sinatra/activerecord"

set :database, {adapter: "sqlite3", database: "app.sqlite3"}

class User < ActiveRecord::Base
  has_many :events
end

class Event < ActiveRecord::Base
  belongs_to :user
end

get "/" do
  "<h1>Hello, world!</h1>"
end

post '/webhook/' do
  puts request.body.read
end