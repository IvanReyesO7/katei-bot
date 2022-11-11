require_relative "time_tree"

class EventChecker
  def self.get_todays_events
    events = TimeTree.get_todays_events
    if !events.count.zero?
      create_events(events)
    end
  end

  def self.create_events(events)
    todays_events = []
    events.each do |event|
      begin
        Event.new(event)
      rescue => e
        puts "Something went wrong, #{e}"
      end
    end
  end
end

class Event
  def initialize(event)
    @name = event["attributes"]["title"]
    @start_at = event["attributes"]["start_at"]
  end
end


EventChecker.get_todays_events
p Event.all