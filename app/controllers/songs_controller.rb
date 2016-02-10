class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(params)
    if @song = Song.create(reservation_params)
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
    if @song.update(user_params)
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song = Song.find(params)
    if @song.destroy
      redirect_to offers_path
    else
      redirect_to @song
    end
  end

  private

  def reservation_params
    params.require(:song).permit(:track)
  end
end
