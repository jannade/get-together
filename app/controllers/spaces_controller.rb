class SpacesController < ApplicationController
  before_action :find_space, only: [:show, :edit, :update, :destroy]

  def index
    @spaces = Space.all
  end

  def show
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to space_path(@space.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @space.update(space_params)
    redirect_to mylistings_path
  end

  def destroy
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
