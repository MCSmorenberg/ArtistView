class ArtistImgController < ApplicationController
  def index
    @artistimgs = ArtistImg.all
  end

  def new
    @artistimg = ArtistImg.new
  end

  def create
    if @artistimg = ArtistImg.create(artistimg_params)
      redirect_to @artistimg
    else
      render :new
    end
  end

  def show
    @artistimg = ArtistImg.find(params[:id])
  end

  def edit
    @artistimg = ArtistImg.find(params[:id])
  end

  def update
    @artistimg = ArtistImg.find(params[:id])
    if @artistimg.update(artist_params)
      redirect_to @artistimg
    else
      render :edit
    end
  end

  def destroy
    @artistimg = ArtistImg.find(params)
    if @artistimg.destroy
      redirect_to artits_path
    else
      redirect_to @artistimg
    end
  end

  private

  def artistimg_params
    params.require(:artistimg).permit(:picture)
  end
end
