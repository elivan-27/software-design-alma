class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  validates :size, presence: true
end
