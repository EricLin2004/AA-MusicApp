class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.create(params[:band])
    redirect_to band_url(@band)
  end

  def show
    @band = Band.find(params[:id])
  end
end
