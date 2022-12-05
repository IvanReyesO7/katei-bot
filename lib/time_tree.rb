require 'timetree'
require_relative '../linebot'

TimeTree.configure do |config|
  config.oauth_app_token = ENV["TIMETREE_TOKEN"]
end
  
client = TimeTree::OAuthApp::Client.new
calendar = client.calendars.first
events = calendar.upcoming_events(days: 0, timezone: 'JST')

if !events.empty?
  events_arr = []
  header = "今日のカレンダーイベントです!\n"
  events.each do |event|
    events_arr << "#{event.title} - #{event.creator.name}"
  end
  message = header + events_arr.join("\n")
  LineBot.post_message(message)
end
