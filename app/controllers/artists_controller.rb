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
  end
end
