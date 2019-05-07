class Api::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all 
    render 'index.json.jbuilder'
  end

  def create
    @restaurant = Restaurant.new(
                           name: params[:name],
                           address: params[:address]
                           )
    if @restaurant.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @restaurant.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    @restaurant.name = params[:name] || @restaurant.name,
    @restaurant.address = params[:address] || @restaurant.address

    if @restaurant.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @restaurant.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    render json: {message: "Successfully removed restaurant."}
  end
end
