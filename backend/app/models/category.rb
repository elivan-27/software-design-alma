class Category < ApplicationRecord
  # * Dependencia de la categoría: si se elimina una categoría, se eliminan todos los productos asociados a ella.
  has_many :products, dependent: :destroy
  has_one_attached :image
  validates :name, presence: true
  validates :image, presence: true # Si deseas que la imagen sea obligatoria
end
