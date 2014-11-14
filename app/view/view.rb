<<<<<<< HEAD
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
=======

#  ARGV

# p "Welcome to the world's most terrible food app."
# p "Enter your zip code: "
# zip = gets.chomp
# p "What do you want to eat?"
# category = gets.chomp


=begin
name
rating
display_address
review snippet
categories
=end

# display object

p "---" * 30
p "#{business.review.snippet}"  # extract first sentence.  business.review.split on . & slice [0]?
p "---" * 30
p "Head to #{business.name} to get your #{business.categories} on #{business.display_address}"

>>>>>>> 10757fbf9c6740c1b9c82dbcc414de51dce97c46
