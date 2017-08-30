class ReviewsController < ApplicationController
  def index
    @reviews = Review.find_each
  end

  def create_review
    rate = params[:rate]
    comments = params[:comments]
    restaurant_name = params[:restaurant_name]
    restaurant_city = params[:restaurant_city]
    restaurant_id = params[:restaurant_id]
    @review = Review.new
    @review.update_attributes(rate: rate, comments: comments, restaurant_name: restaurant_name, restaurant_city: restaurant_city, restaurant_id: restaurant_id)
    redirect_to :back
  end

  def list_reviews
    @reviews = Review.all
  end

end
