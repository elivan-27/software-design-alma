class AddSizeToCartItems < ActiveRecord::Migration[8.0]
  def change
    add_column :cart_items, :size, :string
  end
end
