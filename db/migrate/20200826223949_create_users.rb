class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.time :start_work_time
      t.integer :min_num_hours
      t.integer :max_num_hours

      t.timestamps
    end
  end
end
