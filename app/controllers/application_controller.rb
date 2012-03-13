class ApplicationController < ActionController::Base
  protect_from_forgery
  respond_to :html, :json, :xml

  before_filter :left_side_data
  
  def left_side_data
    if logged_in? 
      @me = current_user 
      @my_agendas = @me.agendas.find(:all)
      @my_follows = @me.all_follows
      @new_agenda = @me.agendas.new
    else
      @me = User.new
    end 
  end

end
