class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :dish_id
      t.integer :quantity
    end
  end
end
