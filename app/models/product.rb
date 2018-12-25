class Product < ApplicationRecord
  belong_to :catalogy
  belong_to :menu

  has_many :rates, dependent: :destroy
  has_many :products_orders, dependent: :destroy

  validation :product_name, presence: true, length: {maximum: Settings.product.name_max_length}
end
