class ArtistsController < ApplicationController

  def index
    if params[:order_by] == 'created_at'
      @artists = Artist.all.order(:created_at)
    elsif params[:order_by] == 'name'
      @artists = Artist.all.order(:name)
    else
      @artists = Artist.all
    end

    respond_to do |format|
      format.html
      format.json
    end
  end


  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def new
  @song = Song.new
  end

  def create
    @song  = Song.create(song_params)
  end

  private

    def all_tasks
      @songs = Song.all
    end

    def task_params
      params.require(:song).permit(:name, :artist_id)
    end

end
