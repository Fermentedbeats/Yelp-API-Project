require 'faker'
20.times do
  Business.create(name: Faker::Hacker.say_something_smart)
end
