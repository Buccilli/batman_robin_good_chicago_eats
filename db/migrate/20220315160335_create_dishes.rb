class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :must_get
      t.string :never_ever_again
      t.integer :restaurant_id
      t.integer :distance_to_joey_id
      t.integer :added_by

      t.timestamps
    end
  end
end
