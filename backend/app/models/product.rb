class Product < ApplicationRecord
  # * Se define la relación entre el modelo Product y el modelo Category
  belongs_to :category
  has_one_attached :image

  # * Validar que el stock sea un número mayor o igual a 0
  validates :stock, numericality: { greater_than_or_equal_to: 0 }
end
