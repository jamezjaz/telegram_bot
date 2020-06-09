# rubocop: disable Layout/LineLength, Style/RedundantInterpolation

require 'telegram/bot'
require 'dotenv'
Dotenv.load('token.env')
require_relative 'inspire.rb'
require_relative 'joke.rb'

class Bot
  def initialize
    token  = ENV['TOKEN']

    Telegram::Bot::Client.run(token) do |my_bot|
      my_bot.listen do |message|
        case message.text
        when '/start'

          my_bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name} , welcome to Telegram. I am a bot and I was created by James C. Odufu. I am here to keep you inspired and entertained. Use  /start to start the bot, /inspire to get amazing inspirational quotes, /joke to get hilarous jokes or /stop to end the bot")

        when '/stop'

          my_bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}, I hope to see you soon", date: message.date)

        when '/inspire'
          quotes = Inspire.new
          quote = quotes.select_randomly
          my_bot.api.send_message(chat_id: message.chat.id, text: "#{quote['en']}", date: message.date)

        when '/joke'
          quotes = Joke.new
          quote = quotes.message_request
          my_bot.api.send_message(chat_id: message.chat.id, text: "#{quote['setup']}", date: message.date)
          my_bot.api.send_message(chat_id: message.chat.id, text: "#{quote['punchline']}", date: message.date)
        end
      end
    end
  end
end

# rubocop: enable Layout/LineLength, Style/RedundantInterpolation
