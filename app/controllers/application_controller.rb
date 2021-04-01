class ApplicationController < ActionController::Base
  before_action :store_user_location!, if: :storable_location?
  #before_action :authenticate_user!
  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to '/', :alert => exception.message
  # end
  protected
    # def after_sign_in_path_for(resource)
    #   home_index_path
    # end
    # def after_sign_up_path_for(resource)
    #   new_user_session_path
    # end

    def storable_location?
      request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
    end

    def store_user_location!
      # :user is the scope we are authenticating
      store_location_for(:user, request.fullpath)
    end

end
