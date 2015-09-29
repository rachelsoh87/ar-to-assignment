require_relative '../app/models/task'

require 'faker'

5.times do
  description = Faker::Hacker.say_something_smart
  
  Task.create(:task_item => description, :status => 0 )
end

