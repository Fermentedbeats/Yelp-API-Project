class Controller
  # include View

  def run
    View.welcome
    puts "What city are you in?"
    location = gets.chomp
    View.food_choices
    catagory = gets.chomp
    View.display_business
  end
end
