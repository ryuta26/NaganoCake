class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_kana, :first_kana, :postal_code, :domicile, :phone_number])
  end

  def after_sign_in_path_for(resource)
  case resource
  when Admin
    admin_items_path
  when EndUser
    end_user_path
  end
end

end
