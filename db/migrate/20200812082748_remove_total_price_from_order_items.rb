class RemoveTotalPriceFromOrderItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :order_items, :total_price, :float
  end
end
