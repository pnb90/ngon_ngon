class Api::DishesController < ApplicationController
  def index
    @dishes = Dish.all 
    render 'index.json.jbuilder'
  end

  def create
    @dish = Dish.new(
                     name: params[:name],
                     price: params[:price]
                     )
    if @dish.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @dish.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @dish = Dish.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @dish = Dish.find(params[:id])

    @dish.name = params[:name] || @dish.name,
    @dish.price = params[:price] || @dish.price,

    if @dish.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @dish.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    render json: {message: "Successfully removed dish."}
  end
end
