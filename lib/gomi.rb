require_relative '../linebot'
class Gomi
  def self.send_message
    message = "今日はゴミの日だ、忘れるんじゃねえぞ"
    LineBot.post_message(message)
  end
end