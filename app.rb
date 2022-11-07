require "sinatra"
require "sinatra/activerecord"
require_relative 'linebot'


set :database, {adapter: "sqlite3", database: "app.sqlite3"}

class User < ActiveRecord::Base
  has_many :events
end

class Event < ActiveRecord::Base
  belongs_to :user
end

get "/" do
  LineBot.post_message("Accessed!")
end

post '/webhook/' do
  puts request.body.read
end