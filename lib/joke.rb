require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class Joke
  def message_request
    url = 'https://official-joke-api.appspot.com/random_joke'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    response
  end
end
