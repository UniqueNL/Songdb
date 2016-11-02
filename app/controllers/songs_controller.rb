class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
  end

  def destroy
    @songs = Song.all
    @song = Song.find(params[:id])
    @song.destroy
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end
end
