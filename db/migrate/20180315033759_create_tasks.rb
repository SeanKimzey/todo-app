class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :Name
      t.string :Location
      t.string :Due_Date

      t.timestamps
    end
  end
end
