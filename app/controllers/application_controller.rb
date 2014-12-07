class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?

  layout :layout_by_resource

  protected
    def layout_by_resource
      if devise_controller?
        if resource_name == :educator
          "devise_educator_application" # educator model will use this layout
        elseif resource_name == :teacher
          "devise_teacher_application" # teacher model will use this layout
        elseif 
          "devise_parent_application" # parent model will use this layout
        else
          "devise_application" # all other devise models will use the default layout
        end
      else
        "application" #default rails application layout
      end
    end

  protected 
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:signin)}
      devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :username, :password, :password_confirmation) }
    end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

    protect_from_forgery with: :exception
end
