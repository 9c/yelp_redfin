$client = Yelp::Client.new({ consumer_key: ENV['YelpConsumerKey'],
                            consumer_secret: ENV['YelpConsumerSecret'],
                            token: ENV['YelpToken'],
                            token_secret: ENV['YelpTokenSecret']
                          })
#response = Rubillow::PropertyDetails.deep_search_results({ :address => '2114 Bigelow Ave', :citystatezip => 'Seattle, WA' })
Rubillow.configure do |configuration|
  configuration.zwsid = ENV['ZillowSID']
end