class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:show, :edit, :update, :destroy, :add_song]
  
  def index
    @billboards = Billboard.all
  end

  def show
  end

  def new
    @billboard = Billboard.new
    render partial: 'form'
  end
  
  def create
    @billboard = Billboard.new(set_params)
    if @billboard.save
      redirect_to billboards_path
    else
      render :new
    end
  end

  def edit
    render partial: 'form'
  end

  def update
    if @billboard.update(set_params)
      redirect_to billboards_path
    else 
      render :new
    end
  end

  def destroy
    @billboard.destroy
    redirect_to billboards_path
  end

  def new_song
    @billboard = Billboard.find(params[:id])
    @songs = Song.all.where(billboard_id: nil)
  end

  def add_song
    @billboard.songs << Song.find(params[:song_id])
    redirect_to billboard_path(@billboard)
  end

  def remove_song
    @billboard = Billboard.find(params[:id])
    Song.find(params[:song_id]).update(billboard_id: nil)
    redirect_to billboard_path(@billboard)
  end




  private 
  def set_billboard
    @billboard = Billboard.find(params[:id])
  end

  def set_params
    params.require(:billboard).permit(:name)
  end
 
end
