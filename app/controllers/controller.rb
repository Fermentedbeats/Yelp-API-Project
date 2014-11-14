class Controller
  # include View

  def run
    View.welcome
    username = gets.chomp
    user = User.create(name: username)

    View.render("Enter 1 to view your previous searches or 2 to make a new search.")

    case gets.chomp
    when "1"
      get_search_list(username)
    when "2" #choice == "2"
      generate_yelp_search(username)
    end
  end

  def get_search_list(username)
    return puts "You have no saved searches." if User.where("name = '#{username}'").first.businesses.empty?
    View.print_searches(username)
    View.render("Enter search number to view more info.")
    more_info = gets.chomp
    View.display_business(Business.find(more_info))
  end

  def generate_yelp_search(username)
    View.render("What city are you in?")
    location = gets.chomp
    View.food_choices
    category = gets.chomp
    random_business = YelpSearch.get_random_business(location, category)
    User.where("name = '#{username}'").first.businesses << random_business
    View.display_business(random_business)
  end

end

module YelpSearch
  require 'yelp'

  CLIENT = Yelp::Client.new({ consumer_key: 'vapOYULI1GchXn7dKoNPQQ',
    consumer_secret: '1niWuYgf6mFALxjgZ6Nt9oe5RNs',
    token: 'DjdQ7WZrf-iMNv6ErUcNCijCJ4yft-80',
    token_secret: 'Pift1EpxQTipd-DBLsnUh73VnQQ'
    })

  def self.get_random_business(location, category)
    params = { term: category,
     limit: 20
   }

   result = CLIENT.search(location, params).businesses.sample
   Business.create(name: result.name,
    location: result.location.display_address.join(' '),
    rating: result.rating,
    category: result.categories.first[0],
    review: result.snippet_text.split("\n\n").first
    )


 end
end

