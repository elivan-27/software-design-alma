json.extract! t_shirt, :id, :name, :description, :size, :color, :price, :stock, :created_at, :updated_at
json.url t_shirt_url(t_shirt, format: :json)
