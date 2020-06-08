require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class Inspire
  @quotes = nil

  def initialize
    @quotes = quotes_request
  end

  # Mkakes requests to an endpoint that returns motivational messages as JSON response
  def quotes_request
    url = 'https://programming-quotes-api.herokuapp.com/quotes/lang/en'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response = JSON. parse(response)
    response
  end

  # Selects quotes/0messages randomly
  def select_randomly
    @quotes = @quotes.sample
    @quotes
  end
end
