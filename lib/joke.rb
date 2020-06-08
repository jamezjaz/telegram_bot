require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class Joke
  @quotes = nil

  def initialize
    @quotes = quotes_request
  end

  # Mkakes requests to an endpoint that returns motivational messages as JSON response
  def quotes_request
    url = 'https://official-joke-api.appspot.com/random_joke'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    response
  end
end
