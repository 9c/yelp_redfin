$cient = Yelp::Client.new({ consumer_key: ENV['YelpConsumerKey'],
                            consumer_secret: ENV['YelpConsumerSecret'],
                            token: ENV['YelpToken'],
                            token_secret: ENV['YelpTokenSecret']
                          })