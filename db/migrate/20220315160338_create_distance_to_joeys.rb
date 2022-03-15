class CreateDistanceToJoeys < ActiveRecord::Migration[6.0]
  def change
    create_table :distance_to_joeys do |t|
      t.integer :restaurant_id
      t.integer :minutes_walking

      t.timestamps
    end
  end
end
