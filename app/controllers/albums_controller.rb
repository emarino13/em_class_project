class AlbumsController < ApplicationController

  def index
    @albums = []

  end

  def find_by_name
    @album_name = params[:album_name]
    @albums = Album.where(:name => @album_name)
    render :index
  end

  def find_by_year
    @album_year  = params[:album_year]
    @albums = Album.where(:year => @album_year)
    render :index
  end

end
