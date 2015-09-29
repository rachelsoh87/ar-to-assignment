class ToDo
#task = Task.new
user_input = ARGV
#add = input(3).slice
#view = input(4).slice

#if command = "add"
 #task.add
 #find a way to connect command to methods
    def self.add
        Task.create 
    end
    
    def self.list
        puts "All your todos:"
        Task.all
    end

    def self.update
        puts "Completed"#find index of item you are trying to update, update "completed" inside your status column. but howwww"
    end

    def self.delete
        puts "Your item has been deleted"
        tas # find index of item you are trying to delete and delete row, need to reupdate ids
    end
end
