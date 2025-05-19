class Product < ApplicationRecord
  belongs_to :category
  has_one_attached :image

  has_many :cart_items  

  validates :stock, numericality: { greater_than_or_equal_to: 0 }
  validates :name, :price, :stock, :category_id, :image, presence: true

  def formatted_price
    ActionController::Base.helpers.number_to_currency(price, unit: "", separator: ",", delimiter: ".", precision: 0)
  end
end
