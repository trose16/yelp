class ReviewsController < ApplicationController

  def new
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    review = @restaurant.reviews.new(review_params)
    review.user_id = current_user.id
    redirect_to '/restaurants' if review.save
  end

  private

  def review_params
    params.require(:review).permit(:thoughts, :rating)
  end

end
