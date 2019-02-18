class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :show]
  before_action :find_space, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = " \
        spaces.name @@ :query \
        OR spaces.location @@ :query \
        AND spaces.category @@ :category \
      "
      @spaces = Space.where(sql_query, category: "%#{params[:category]}%", query: "%#{params[:query]}%")
    else
      @spaces = Space.all
    end

    @spaces_markers = Space.where.not(latitude: nil, longitude: nil)

    @markers = @spaces_markers.map do |space|
      {
        lng: space.longitude,
        lat: space.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { space: space })
      }
    end
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
    params.require(:space).permit(:name, :location, :price, :category, :user_id, :photo)
  end
end
