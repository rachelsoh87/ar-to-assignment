require_relative 'config/application'
#require_relative 'app/models/task'
require 'byebug'



command = ARGV.shift
string = ARGV.join(" ")

case command
when "list"
    puts "Task List"
    puts "======="
    tasks = Task.all
    tasks.each_with_index do |task, index|
        if task.complete == 0
            puts "#{index + 1}. #{task.name} [NOT DONE]"
        else 
            puts "#{index + 1}. #{task.name} [DONE]"
        end
    end
    
when "new"
    tasks = Task.create(name: string, complete: 0)
    puts "create new task"
when "complete"
    
    puts "set task to complete"
when "delete"
    puts "delete task"
else
    puts "Invalid Command."
    puts "Available Command:"
    puts "list - list all tasks"
    puts "new [taskname] - create new task"
    puts "complete [id] - set task to complete"
    puts "delete[id] - delete the task"
end
#p [command,string]
#puts "Put your application code in #{File.expand_path(__FILE__)}"
#byebug
#call controller

#list all current tasks
#Task.add
#Task.list
#Task.destroy
#add stuff

#wanna delete stuff

#change to completed