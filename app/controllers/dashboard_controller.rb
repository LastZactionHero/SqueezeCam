class DashboardController < ApplicationController

  layout 'dashboard'

  before_filter :authenticate
  
  def index
  
  end
  
  private
  
  def authenticate
    redirect_to :new_user_session unless current_user
  end

end
