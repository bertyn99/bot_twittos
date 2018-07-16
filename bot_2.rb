require 'twitter'
require 'dotenv'
require'pry'
Dotenv.load

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = ENV["Consumer_key"]
  config.consumer_secret     = ENV["Consumer_secret"]
  config.access_token        = ENV["Access_token"]
  config.access_token_secret = ENV["Access_token_secret"]
end


topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
