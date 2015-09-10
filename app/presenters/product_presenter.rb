class ProductPresenter
  def initialize(product, cart, sale, view_context)
    @product = product
    @cart = cart
    @sale = sale
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

  def price
    if @sale.on_sale?(@product)
      @h.content_tag(:h4, full_price, class: "price full-price right") +
      @h.content_tag(:h4, sale_price, class: "price sale-price")
    else
      @h.content_tag(:h4, full_price, class: "price right")
    end
  end

  def end_of_sale
    if @sale.on_sale?(@product) && !@cart.in_cart?(@product)
      @h.content_tag(:div, class: "alert-box success radius") do
        "This price is available for #{sale_end_distance}."
      end
    end
  end

  def items_in_cart
    if @cart.items > 0
      @h.content_tag(:div, class: "alert-box info radius") do
        "There are #{@cart.items} items in your cart."
      end
    end
  end

  private
  def sale_end_distance
    @h.distance_of_time_in_words(@sale.end_date, Time.now)
  end

  def full_price
    @h.number_to_currency(@product.price)
  end

  def sale_price
    @h.number_to_currency(@product.price - @product.price * @sale.percentage)
  end
end
