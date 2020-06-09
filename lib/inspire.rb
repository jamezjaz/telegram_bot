require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class Inspire
  @quotes = nil

  def initialize
    @quotes = message_request
  end

  def select_randomly
    @quotes = @quotes.sample
    @quotes
  end

  private

  def message_request
    url = 'https://programming-quotes-api.herokuapp.com/quotes/lang/en'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    response
  end
end
