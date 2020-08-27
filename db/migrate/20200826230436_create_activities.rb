class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :activity_description
      t.integer :relaxation_category_id
      t.boolean :short_activity
      t.boolean :long_activity

      t.timestamps
    end
  end
end
