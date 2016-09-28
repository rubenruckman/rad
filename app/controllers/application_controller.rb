class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate

  private

  def authenticate
    if ENV['PROTECTED_SITE']
      authenticate_or_request_with_http_basic('Administration') do |username, password|
        username == ENV['PROTECTED_SITE_USERNAME'] && password == ENV['PROTECTED_SITE_password']
      end
    end
  end
end
