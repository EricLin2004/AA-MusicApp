class AlbumsController < ApplicationController
  def index
    if params[:order] == 'band_name'
      @albums = Album.joins(:band).order('bands.name')
    else
      @albums = Album.all
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @selected = params[:band_id] ? params[:band_id] : 1
    @album = Album.new
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to album_url(@album)
    else
      flash.notice = @album.errors.full_messages
      render :new
    end
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
