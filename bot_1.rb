require 'twitter'
require 'dotenv'
require'pry'
Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["Consumer_key"]
  config.consumer_secret     = ENV["Consumer_secret"]
  config.access_token        = ENV["Access_token"]
  config.access_token_secret = ENV["Access_token_secret"]
end
p client

#client.update('Mon premier tweet en ruby !!!!') 
binding.pry

