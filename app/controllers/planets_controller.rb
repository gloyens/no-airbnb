class PlanetsController < ApplicationController

  def index
    @planets = Planet.new
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.save
    redirect_to planet_path(@planet)
  end

  private
  def planet_params
    params.require(:planet).permit(:name, :description, :size, :image_url, :population, :rating, :price)
  end
end
