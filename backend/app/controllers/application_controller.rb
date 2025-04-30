class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

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
end
