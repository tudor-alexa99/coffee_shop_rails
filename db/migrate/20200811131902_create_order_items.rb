class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :dish_id
      t.integer :order_id
      t.integer :quantity
      t.float :total_price

      t.timestamps
    end
  end
end
