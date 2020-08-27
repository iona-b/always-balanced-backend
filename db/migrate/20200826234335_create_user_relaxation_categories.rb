class CreateUserRelaxationCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :user_relaxation_categories do |t|
      t.integer :user_id
      t.integer :relaxation_category_id

      t.timestamps
    end
  end
end
