module Pricing
  def self.apply_total_value_discount(items, products, options)
    total = items.reduce(0) { |sum, item_code| sum + products[item_code].price }
    total >= options[:threshold] ? total * options[:discount_rate] : 0
  end

  def self.apply_product_quantity_discount(items, products, options)
    quantity = items.count(options[:product_id])
    if quantity >= options[:required_quantity]
      full_price = products[options[:product_id]].price
      discount_amount = full_price * options[:discount_rate]
      discount_amount * (quantity / options[:required_quantity])
    else
      0
    end
  end
end
