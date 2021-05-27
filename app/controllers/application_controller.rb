class ApplicationController < ActionController::Base
    protected 
    before_action :configure_permitted_parameters, if: :devise_controller?
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :password, :email])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :remember_me])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :email, :about, :birthdate])
    end
end
