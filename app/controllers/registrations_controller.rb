class RegistrationsController < Devise::RegistrationsController
  def create
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
    super
  end

  def destroy
    resource.destroy
    redirect_to root_path
  end
end
