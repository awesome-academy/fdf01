class ProductsOrder < ApplicationRecord
  belong_to :order
  belong_to :product
end
