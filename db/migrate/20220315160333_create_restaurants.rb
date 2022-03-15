class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :good_service
      t.integer :distance_to_joey
      t.integer :price
      t.string :other_comments
      t.string :cuisine
      t.string :name
      t.string :neighborhood
      t.integer :service_id
      t.integer :added_by
      t.integer :desire_to_go_to_restaurant

      t.timestamps
    end
  end
end
