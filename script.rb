require 'twitter'
# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "EVjKx8alk6cibDFy6sK1vYfhQ"
  config.consumer_secret     = "uaFYrRAB67DJypCY7Rs6Gt5KYrIpfrw1fueKT3KLtI9OdUa6rC"
  config.access_token        = "953541124412596224-9NQPwQ3ObDZCh5E3gnASJ35ikVbz53M"
  config.access_token_secret = "Bc46T0Q3ZBECP5OSpKY25bUxsINBMYhXyHCin39Q4kdXJ"
end

topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
