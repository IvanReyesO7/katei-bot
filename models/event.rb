require "sinatra/activerecord"

class Event < ActiveRecord::Base
  belongs_to :user
end