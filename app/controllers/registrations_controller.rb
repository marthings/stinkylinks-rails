class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nick_name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:nick_name, :avatar])
    end
end