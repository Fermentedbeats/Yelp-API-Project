require 'yelp'

client = Yelp::Client.new({ consumer_key: 'vapOYULI1GchXn7dKoNPQQ',
                            consumer_secret: '1niWuYgf6mFALxjgZ6Nt9oe5RNs',
                            token: 'DjdQ7WZrf-iMNv6ErUcNCijCJ4yft-80',
                            token_secret: 'Pift1EpxQTipd-DBLsnUh73VnQQ'
                          })

params = { term: 'food',
           limit: 1
         }


result = client.search('San Francisco', params)

result.businesses.each do |business|
  p business.rating
end
