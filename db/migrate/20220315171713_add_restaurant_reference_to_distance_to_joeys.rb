class AddRestaurantReferenceToDistanceToJoeys < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :distance_to_joeys, :restaurants
    add_index :distance_to_joeys, :restaurant_id
    change_column_null :distance_to_joeys, :restaurant_id, false
  end
end
