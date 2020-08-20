require 'barby'
require 'barby/barcode'
require 'barby/barcode/qr_code'
require 'barby/outputter/png_outputter'

module OrdersHelper
  def copy_cart_items(cart_items, order_id)
    cart_items.each do |ci|
      OrderItem.create(order_id: order_id, dish_id: ci.dish_id, quantity: ci.quantity)
    end
  end

  def generate_qr(text)

    barcode = Barby::QrCode.new(text, level: :q, size: 5)
    base64_output = Base64.encode64(barcode.to_png({xdim: 5}))
    "data:image/png;base64,#{base64_output}"
  end
end
