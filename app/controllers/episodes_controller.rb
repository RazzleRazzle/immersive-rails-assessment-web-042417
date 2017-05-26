class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find_by(params[:id])
  end 
end
