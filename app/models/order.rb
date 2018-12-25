class Order < ApplicationRecord
  belong_to :user
  has_many :products_orders, dependent: :destroy
end
