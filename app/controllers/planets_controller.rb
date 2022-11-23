class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
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
      redirect_to planets_path
    else
      render :new
    end
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :description, :image_url, :population, :rating, :price)
  end
end
