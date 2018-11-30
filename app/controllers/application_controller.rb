class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :devise_controller?

  rescue_from ActionController::InvalidAuthenticityToken, with: :redirect_and_prompt_for_sign_in

  protected

    def redirect_and_prompt_for_sign_in
      redirect_to(new_user_session_path, alert: 'Please sign in.')
    end

  private

    def restrict_unless_admin
      redirect_to(root_url, alert: 'Access denied.') unless current_user.admin?
    end

    def after_sign_in_path_for(resource)
      user_path current_user
    end

    def after_sign_out_path_for(resource)
      root_path
    end

end
