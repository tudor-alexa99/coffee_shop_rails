module OrdersHelper
  def copy_cart_items(cart_items, order_id)
    cart_items.each do |ci|
      OrderItem.create(order_id: order_id, dish_id: ci.dish_id, quantity: ci.quantity)
    end
  end
end
