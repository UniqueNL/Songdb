class ArtistsController < ApplicationController

  def index
    if params[:order_by] == 'created_at'
      @artists = Artist.all.order(:created_at)
    elsif params[:order_by] == 'name'
      @artists = Artist.all.order(:name)
    else
      @artists = Artist.all
    end
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
    @song = Song.new
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to root_path, notice: 'Song was successfully created.' }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @songs = Song.all
    @song = Song.find(params[:id])
    @song.update_attributes(song_params)
  end

  def destroy
    @songs = Song.all
    @song = Song.find(params[:id])
    @song.destroy
  end

  def delete
    @song = Song.find(params[:song_id])
    @songs = Song.all
  end

  private
    def song_params
      params.require(:song).permit(:name)
    end
  end
