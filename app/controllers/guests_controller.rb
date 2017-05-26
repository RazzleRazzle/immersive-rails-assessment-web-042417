class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find_by(params[:id])
  end 
end
