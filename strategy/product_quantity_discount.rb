class ProductQuantityDiscount < DiscountStrategy
  def apply
    Pricing.apply_product_quantity_discount(@items, @products, @options)
  end
end
