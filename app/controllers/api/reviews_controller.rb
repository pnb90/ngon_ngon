class Api::ReviewsController < ApplicationController
  def index
    @reviews = Review.all 
    render 'index.json.jbuilder'
  end

  def create
    @review = Review.new(
                        user_id: params[:user_id],
                        restaurant_id: params[:restaurant_id],
                        rating: params[:rating],
                        comments: params[:comments],
                        photos: params[:photos]
                        )
    if @review.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @review.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @review = Review.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @review = Review.find(params[:id])

    @review.user_id = params[:user_id] || @review.user_id,
    @review.restaurant_id = params[:restaurant_id] || @review.restaurant_id,
    @review.rating = params[:rating] || @review.rating,
    @review.comments = params[:comments] || @review.comments,
    @review.photos = params[:photos] || @review.photos

    if @review.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @review.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    render json: {message: "Successfully removed review."}
  end
end
