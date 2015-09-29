require_relative 'config/application'
require_relative 'app/models/task'
require 'byebug'
#puts "Put your application code in #{File.expand_path(__FILE__)}"
#byebug
#call controller

#list all current tasks
Task.add
Task.list
Task.destroy
#add stuff

#wanna delete stuff

#change to completed