class Api::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all 
    render 'index.json.jbuilder'
  end

  def create
    @restaurant = Restaurant.new(
                           name: params[:name],
                           address: params[:address],
                           favorite: params[:favorite],
                           visited: params[:visited],
                           craving: params[:craving],
                           comments: params[:comments],
                           user_id: params[:user_id]
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
    @restaurant.address = params[:address] || @restaurant.address,
    @restaurant.favorite = params[:favorite] || @restaurant.favorite,
    @restaurant.visited = params[:visited] || @restaurant.visited,
    @restaurant.craving = params[:craving] || @restaurant.craving,
    @restaurant.comments = params[:comments] || @restaurant.comments,
    @restaurant.user_id = params[:user_id] || @restaurant.user_id

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
