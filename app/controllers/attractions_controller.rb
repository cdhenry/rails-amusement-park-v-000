class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def show
    @attraction = Attraction.find(params[:id])
    @ride = Ride.new
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def create
    attraction = Attraction.new(attraction_params)
    if attraction.save
      redirect_to user_path(attraction)
    else
      redirect_to :new
    end
  end

  def update
  end

  private

  def user_params
    params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
  end
end
