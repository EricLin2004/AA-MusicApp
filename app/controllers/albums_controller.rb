class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @selected = params[:band_id] ? params[:band_id] : 1
    @album = Album.new
  end

  def create
    @album = Album.create(params[:album])
    redirect_to album_url(@album)
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    @album.update_attributes(params[:album])

    redirect_to album_path(@album)
  end

end
