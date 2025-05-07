Rails.application.routes.draw do
  get "profile/show"

  scope "(:locale)", locale: /en|es/ do
    # Rutas de Devise
    devise_for :users
    get "profile", to: "profile#show"

    # Rutas adicionales
    get "home", to: "home#index"
    root "home#index"

    namespace :admin do
      get "dashboard", to: "dashboard#index"
      resources :users, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
      resources :categories do
        resources :products
      end
    end
  end

  # Ruta para el health check
  get "up" => "rails/health#show", as: :rails_health_check
end
