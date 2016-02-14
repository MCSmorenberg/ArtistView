class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
    @artists = Artist.all
  end

  def create
    if @song = Song.create(song_params)
      redirect_to @song
    else
      render :new
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song = Song.find(params[:id])
    if @song.destroy
      redirect_to root_path
    else
      redirect_to @song
    end
  end

  private

  def song_params
    params.require(:song).permit(:artist_id, :track)
  end
end
