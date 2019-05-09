class Api::RestaurantDishesController < ApplicationController

  def index
    @restaurant_dishes = RestaurantDish.all 
    render 'index.json.jbuilder'
  end

  def create
    @restaurant_dish = RestaurantDish.new(
                                          dish_id: params[:dish_id],
                                          restaurant_id: params[:restaurant_id],
                                          favorite: params[:favorite],
                                          craving: params[:craving]
                                          )
    if @restaurant_dish.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @restaurant_dish.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @restaurant_dish = RestaurantDish.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @restaurant_dish = RestaurantDish.find(params[:id])

    @restaurant_dish.dish_id = params[:dish_id] || @restaurant_dish.dish_id,
    @restaurant_dish.restaurant_id = params[:restaurant_id] || @restaurant_dish.restaurant_id,
    @restaurant_dish.favorite = params[:favorite] || @restaurant_dish.favorite,
    @restaurant_dish.craving = params[:craving] || @restaurant_dish.craving

    if @restaurant_dish.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @restaurant_dish.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @restaurant_dish = RestaurantDish.find(params[:id])
    @restaurant_dish.destroy
    render json: {message: "Successfully removed restaurant."}
  end
end
