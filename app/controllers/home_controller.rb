class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:landing_page]
  load_and_authorize_resource



  def landing_page; end

  def index
    if current_user.superadmin_role
      render 'superadmin_home'
    elsif current_user.supervisor_role
      render 'supervisor_home'
    end
  end

  def superadmin_home; end

  def supervisor_home
    respond_to do |format|
      format.js {render 'home/reports.js.erb'} # Add this line to you respond_to block
    end


  end


end
