require_relative '../../config/application'

class Task < ActiveRecord::Base
    
    def self.reset_id
        self.find_each do |task_item|
            task_item.update(:id => i)
            i += 1
        end
    end
    
    
    def self.list
        Task.all.each do |row|
            puts " #{row.id} #{row.task_item} Status: #{row.status}"    
        end
    end
    
    def self.add(something)
        Task.create( :task_item => something, :status => false)
    end    
    
    def self.delete(id)
        Task.find_by(:id => id)
        Task.destroy
    end
    
    def self.complete? 
        return "X" if status == 0
        return "O" if status == 1
        
    end
        
end


