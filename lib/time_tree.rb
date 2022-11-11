require 'timetree'

TimeTree.configure do |config|
  config.oauth_app_token = ENV["TIMETREE_TOKEN"]
end
client = TimeTree::OAuthApp::Client.new
cal = client.calendars.first

# get upcoming events on the calendar.
p evs = cal.upcoming_events