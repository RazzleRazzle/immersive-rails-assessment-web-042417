class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end
end
