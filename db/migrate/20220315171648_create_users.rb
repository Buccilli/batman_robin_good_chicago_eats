class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :liked_dishes
      t.integer :desire_to_go_to_restaurant

      t.timestamps
    end
  end
end
