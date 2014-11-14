require 'faker'
10.times do
  Business.create({name: Faker::Company.name, location: Faker::Address.city, category: Faker::Company.suffix, review: Faker::Hacker.say_something_smart , rating: 1})
end
