class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.integer :cart_id
      t.integer :dish_id

      t.timestamps
    end
  end
end
