require 'telegram/bot'
require_relative 'inspire.rb'

class Bot
  def initialize
    token = '1180933661:AAFuUcHVE8NacW2V7fuOCA7cAAI_0n_j6ug'

    Telegram::Bot::Client.run(token) do |my_bot|
      my_bot.listen do |message|
        case message.text
        when '/start'

          my_bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name} , welcome to Telegram. I am a bot and I was created by James C. Odufu. I am here to keep you inspired and entertained. Use  /start to start the bot, /inspire to get amazing inspirational quotes or /stop to end the bot")

        when '/stop'

          my_bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}, I hope to see you soon", date: message.date)
        
        end
      end
    end
  end
end