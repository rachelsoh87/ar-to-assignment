
#supposed to use ARGV >_<
=begin
class UserInterface 
    
    puts "What would you like to do? \n1. Add new item \n2. View existing items \n3.Update status \n4.Delete \n5.Exit Application"
    user_input = gets.chomp 
    in_loop = true
    
    while in_loop do
    task = Task.new    
        if user_input == "1"
            task.add
        elsif user_input == "2"
            task.list
        elsif user_input == "3"
            task.update
        elsif user_input == "4"
            task.delete
        elsif user_input == "5"
        in_loop = false
        end
    end
end
    
UserInterface.run!
=end