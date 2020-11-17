require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class Inspire
  attr_reader :quotes

  def initialize
    @quotes = message_request
  end

  def select_randomly
    @quotes.sample
  end

  private

  def message_request
    url = 'https://philosophy-quotes-api.glitch.me/quotes'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    response
  end
end
