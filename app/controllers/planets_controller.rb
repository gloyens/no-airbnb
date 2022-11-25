class PlanetsController < ApplicationController

  def index
    if params[:query].present?
      @planets = Planet.search_by_name_and_description(params[:query]).order(created_at: :asc)
    else
      @planets = Planet.all.order(created_at: :asc)
    end
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    if @planet.save
      redirect_to planets_path, notice: "Added #{@planet.name}!"
    else
      render :new
    end
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    redirect_to planets_path
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :description, :image_url, :population, :rating, :price, :size, :photo)
  end
end
