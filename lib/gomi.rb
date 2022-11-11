require_relative '../linebot'

message = "今日はゴミの日だ、忘れるんじゃねえぞ"
LineBot.post_message(message)