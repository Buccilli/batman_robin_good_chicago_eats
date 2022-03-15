class AddServiceReferenceToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :restaurants, :services
    add_index :restaurants, :service_id
    change_column_null :restaurants, :service_id, false
  end
end
