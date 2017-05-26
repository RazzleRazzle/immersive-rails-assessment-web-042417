class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(params[:name])
    if user && user.validate(params[:name])
      session[:user_id] = user.id
      redirect_to guests_path, notice: "logged in"
    else
      flash.now.alert = "invalid login"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
