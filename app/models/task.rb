require_relative '../../config/application'

class Task < ActiveRecord::Base
    
    def self.list
        Task.all.each do |row|
            puts " #{row.id} #{row.task_item} Status: #{row.status}"    
        end
    end
end
