class CreateScheduleActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :schedule_activities do |t|
      t.integer :schedule_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
