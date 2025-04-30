class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  # Todo relacionado con el cambio de idioma, por defecto será redirigido a español
  before_action :redirect_to_default_locale, unless: -> { params[:locale].present? }
  before_action :set_locale

  def redirect_to_default_locale
    redirect_to url_for(locale: I18n.default_locale)
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end

  # Todo: Método para permitir parámetros adicionales para Devise (si es un controlador de Devise)
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Permitir el campo :name, :phone, :address y :role en el registro
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :address, :role])
    
    # Permitir el campo :name, :phone, :address y :role en la actualización de cuenta
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :address, :role])
  end

  #* Método para redirigir al usuario al perfil después de iniciar sesión
  def after_sign_in_path_for(resource)
    profile_path
  end
end
