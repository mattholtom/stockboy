class ProductPresenter
  def initialize(product, cart, view_context)
    @product = product
    @cart = cart
    @h = view_context
  end

  def name
    @product.name
  end

  def description
    @product.description
  end

  def cart_action_button
    if !@cart.in_cart?(@product)
      @h.link_to "Add to Cart", "#", class: "small button"
    else
      @h.link_to "Already in Cart", "#", class: "small button disabled"
    end
  end

end
