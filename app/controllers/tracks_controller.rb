class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.create(params[:track])
    redirect_to track_url(@track)
  end

  def show
    @track = Track.find(params[:id])
  end
end
