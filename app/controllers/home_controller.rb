class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:landing_page]
  #load_and_authorize_resource



  def landing_page
    # if current_user.signed_in?
    #   render 'index'
    # end
  end

  def index

  end


end
