require_relative '../linebot'
class Kane
  def self.send_message
    message = "金くれ〜、忘れるんじゃねえぞ"
    LineBot.post_message(message)
  end
end

Kane.send_message