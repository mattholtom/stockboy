class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
    @cart = Cart.new
    @sale = Sale.new
  end

end

class Cart
  def in_cart?(widget)
    false
  end
  def items
    12
  end
end

class Sale
  def on_sale?(widget)
    true
  end
  def percentage
    0.15
  end
  def end_date
    2.weeks.from_now
  end
end
