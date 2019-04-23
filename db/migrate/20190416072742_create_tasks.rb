class CreateTasks < ActiveRecord::Migration[5.1]
  def up
    create_table :tasks do |t|
      t.boolean "completed", :null => false, :default => false
      t.string "description", :null => false

      t.timestamps
    end
  end

  def down
    drop_table :tasks
  end
end
