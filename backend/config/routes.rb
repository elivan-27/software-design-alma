Rails.application.routes.draw do
  scope "(:locale)", locale: /en|es/ do
    resources :users
  
    get "home", to: "home#index"
    root "home#index"
  end

  # Ruta para el health check (fuera del scope, si quieres que no dependa del idioma)
  get "up" => "rails/health#show", as: :rails_health_check
end
