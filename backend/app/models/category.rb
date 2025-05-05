class Category < ApplicationRecord
  # * Dependencia de la categoría: si se elimina una categoría, se eliminan todos los productos asociados a ella.
  has_many :products, dependent: :destroy
end
