class TotalValueDiscount < DiscountStrategy
  def apply
    Pricing.apply_total_value_discount(@items, @products, @options)
  end
end
