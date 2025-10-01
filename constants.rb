ROOT_PATH = File.expand_path('.', __dir__)
STRATEGY_PATH = File.join(ROOT_PATH, 'strategy')
MODELS_PATH = File.join(ROOT_PATH, 'models')
MODULES_PATH = File.join(ROOT_PATH, 'modules')

autoload :Product, File.join(MODELS_PATH, 'product')
autoload :Basket, File.join(MODELS_PATH, 'basket')
autoload :DeliveryCharge, File.join(MODELS_PATH, 'delivery_charge')
autoload :Discount, File.join(MODELS_PATH, 'discount')
autoload :Pricing, File.join(MODULES_PATH, 'pricing')
autoload :DiscountStrategy, File.join(STRATEGY_PATH, 'discount_strategy')
autoload :TotalValueDiscount, File.join(STRATEGY_PATH, 'total_value_discount')
autoload :ProductQuantityDiscount, File.join(STRATEGY_PATH, 'product_quantity_discount')

PRODUCTS = {
  'R01' => Product.new('R01', 'Red Widget', 32.95),
  'G01' => Product.new('G01', 'Green Widget', 24.95),
  'B01' => Product.new('B01', 'Blue Widget', 7.95)
}.freeze

DELIVERY_RULES = [
  DeliveryCharge.new(0, 50, 4.95),
  DeliveryCharge.new(50, 90, 2.95),
  DeliveryCharge.new(90, Float::INFINITY, 0)
].freeze

DISCOUNTS = [
  Discount.new('TotalValueDiscount', threshold: 50, discount_rate: 0.1),
  Discount.new('ProductQuantityDiscount', product_id: 'R01', required_quantity: 2, discount_rate: 0.5)
].freeze
