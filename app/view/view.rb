module View
  def self.welcome
puts <<-STRING
========================================================================================================================
    Welcome to the Aweful Restaurant Suggestion App
========================================================================================================================
STRING
  end
  def self.display_business
    business_array = Business.all
    pick = business_array.sample
    puts <<-STRING
    Here's a crappy Restaurant:
Restaurant:    #{pick.name}
Location:    #{pick.location}
Best review we could find:    #{pick.review}
Rating:    #{pick.rating}
    STRING
  end

  def self.food_choices
       puts "What kind of food do you want?"
    puts <<-STRING
    ----sandwiches----
    ----italian-------
    italian sandwiches
    ----pizza----------
Choose one of these. Not that matters.
    STRING
  end
end
