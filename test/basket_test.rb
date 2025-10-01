require_relative '../models/basket'
require_relative '../models/product'
require_relative '../models/delivery_charge'
require_relative '../models/discount'
require_relative 'setup'
require_relative '../constants'

class BasketTest < Minitest::Test
  def setup
    @products = {
      'R01' => Product.new('R01', 'Red Widget', 32.95),
      'G01' => Product.new('G01', 'Green Widget', 24.95)
    }

    @delivery_charges = [
      DeliveryCharge.new(0, 50, 4.95),
      DeliveryCharge.new(50, 90, 2.95),
      DeliveryCharge.new(90, Float::INFINITY, 0)
    ]

    @discounts = [
      Discount.new('TotalValueDiscount', threshold: 50, discount_rate: 0.1)
    ]

    @basket = Basket.new(@products, @delivery_charges, @discounts)
  end

  def test_add_and_total
    @basket.add('R01')
    @basket.add('G01')

    assert_in_delta 55.06, @basket.total, 0.01
  end
end
