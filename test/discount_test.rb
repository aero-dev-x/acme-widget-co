require_relative '../models/discount'
require_relative 'setup'

class DiscountTest < Minitest::Test
  def setup
    @discount = Discount.new('TotalValueDiscount', threshold: 50, discount_rate: 0.1)
  end

  def test_discount_initialization
    assert_equal 'TotalValueDiscount', @discount.strategy
    assert_equal({ threshold: 50, discount_rate: 0.1 }, @discount.options)
  end
end
