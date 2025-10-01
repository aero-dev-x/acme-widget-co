require_relative '../models/product'
require_relative 'setup'

class ProductTest < Minitest::Test
  def setup
    @product = Product.new('R01', 'Red Widget', 32.95)
  end

  def test_product_initialization
    assert_equal 'R01', @product.code
    assert_equal 'Red Widget', @product.name
    assert_equal 32.95, @product.price
  end
end
