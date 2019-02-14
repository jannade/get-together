class SpacesController < ApplicationController
  before_action :find_space, only: [:show, :edit, :update, :destroy]

  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    if @space.save
      redirect_to space_path(@space.id)
    else
      render :new
    end
  end

  def edit
    @space = Space.find(params[:id])
  end

  def update
    @space = Space.find(params[:id])
    @space.update(space_params)
    redirect_to mylistings_path
  end

  def destroy
    @space = Space.find(params[:id])
    @space.delete
    redirect_to mylistings_path
  end

  private

  def find_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :location, :price, :category, :user_id)
  end
end
