class CreateScheduleTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :schedule_tasks do |t|
      t.integer :schedule_id
      t.integer :task_id

      t.timestamps
    end
  end
end
