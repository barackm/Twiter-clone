# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protected

  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name username password email])
    devise_parameter_sanitizer.permit(:sign_in, keys: %i[email remember_me])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[name username email about birthdate website location])
  end
end
