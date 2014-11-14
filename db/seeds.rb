require 'faker'
20.times do
  Task.create(task_name: Faker::Hacker.say_something_smart)
end
