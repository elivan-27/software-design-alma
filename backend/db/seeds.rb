# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.find_or_create_by!(email: "alma@designalma.com") do |user|
    user.password = "admin123"
    user.password_confirmation = "admin123"
    user.name = "Alma"
    user.last_name = "Empresa"
    user.city = "Barranquilla"
    user.address = "Calle 123"
    user.role = "admin" 
  end

 user.save

 categories = [
    {name: "Camisetas", image:"seeds/images/camisetas.webp"},
    {name: "Tazas", image:"seeds/images/tazas.webp"},
    {name: "Mousepads", image:"seeds/images/mousepads.webp"},
    {name: "Fundas para Celular", image:"seeds/images/fundas.webp"},
 ]

 categories.each do |data|
    category = Category.create!(name: data[:name])
    image_path = Rails.root.join("db", data[:image])
# rake db:seed