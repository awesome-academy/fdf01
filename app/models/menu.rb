class Menu < ApplicationRecord
  has_many :products, dependent: :destroy
end
