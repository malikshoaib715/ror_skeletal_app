class ApplicationController < ActionController::Base
  #before_action :authenticate_user!
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  protected
    def after_sign_in_path_for(resource)
      home_index_path
    end
    def after_sign_up_path_for(resource)
      new_user_session_path
    end

end
