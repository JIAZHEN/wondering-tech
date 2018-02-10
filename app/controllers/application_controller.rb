class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    I18n.locale = params[:lang] || user_preferred_language || I18n.default_locale
  end

  def default_url_options(options = {})
    { lang: I18n.locale == I18n.default_locale ? nil : I18n.locale  }
  end

  def user_preferred_language
    http_accept_language.compatible_language_from(I18n.available_locales)
  end
end
