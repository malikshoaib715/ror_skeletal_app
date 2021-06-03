class ApplicationController < ActionController::Base
  before_action :store_user_location!, if: :storable_location?
  # include LoadAndAuthorizeResource

  rescue_from CanCan::AccessDenied do |exception|

    redirect_to home_index_path, :alert => exception.message
  end

  protected

    def storable_location?
      request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
    end

    def store_user_location!
      # :user is the scope we are authenticating
      store_location_for(:user, request.fullpath)
    end



end
