require_relative '../models/delivery_charge'
require_relative 'setup'

class DeliveryChargeTest < Minitest::Test
  def setup
    @delivery_charge = DeliveryCharge.new(0, 50, 4.95)
  end

  def test_applicable
    assert @delivery_charge.applicable?(30)
    refute @delivery_charge.applicable?(60)
  end
end
