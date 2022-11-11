require_relative '../linebot'

class MoenaiGomi
  def self.send_message
    message = "明日は燃えないゴミの日だよ！、忘れるんじゃねえぞ"
    LineBot.post_message(message)
  end
end

MoenaiGomi.send_message