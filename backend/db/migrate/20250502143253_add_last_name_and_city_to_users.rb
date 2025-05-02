class AddLastNameAndCityToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :city, :string
  end
end
