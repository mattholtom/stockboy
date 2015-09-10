class ProductPresenter
  def initialize(product)
    @product = product
  end

  def name
    @product.name
  end

  def description
    @product.description
  end
end
