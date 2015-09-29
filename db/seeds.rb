require_relative '../app/models/task.rb'
require 'byebug'
require 'faker'

5.times do 

description = Faker::Hacker.say_something_smart
Task.create(:name => "Go to" + description.to_s, complete: rand(2))
#Task.create (name: "go to" + Faker::Hacker.say_something_smart, complete: rand(2))

end




