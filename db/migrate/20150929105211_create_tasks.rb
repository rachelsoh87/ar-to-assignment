require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |s|
      s.string :task_item
      s.boolean :status

      s.timestamps null: false
    end
  end
end
