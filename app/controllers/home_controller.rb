class HomeController < ApplicationController

  before_action :authenticate_user!, except: [:landing_page]
  # load_and_authorize_resource

  def landing_page
  end

  def index
    @quizzes = Quiz.all
    if current_user.superadmin_role
      render 'superadmin_home'
    elsif current_user.supervisor_role
      render 'supervisor_home'
    end
  end

  def superadmin_home
    @quizzes = Quiz.all
  end

  def supervisor_home

  end

  def supervisor_home_reports
    @reports = Report.all

    respond_to do |format|
      format.js {render 'home/reports.js.erb'} # Add this line to you respond_to block
      format.html
      format.csv {send_data Report.to_csv, filename: "report.csv"}
      format.xls {send_data Report.to_csv, filename: "report.xls"}
    end
  end

  def supervisor_home_charts
    @data = Report.group(:status).count
    respond_to do |format|
      format.js {render 'home/charts.js.erb'}
    end

  end


end
