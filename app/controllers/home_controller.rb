class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:landing_page]
  #load_and_authorize_resource



  def landing_page
    # if current_user.signed_in?
    #   render 'index'
    # end
  end

  def index
    if current_user.superadmin_role
      render 'superadmin_home'
    elsif current_user.supervisor_role
      render 'supervisor_home'
    end

  end

  def superadmin_home; end

  def supervisor_home; end

end
