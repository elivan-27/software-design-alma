class CreateTShirts < ActiveRecord::Migration[8.0]
  def change
    create_table :t_shirts do |t|
      t.string :name
      t.text :description
      t.string :size
      t.string :color
      t.decimal :price
      t.integer :stock

      t.timestamps
    end
  end
end
