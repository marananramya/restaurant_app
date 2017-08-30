class RestaurantsController < ApplicationController
  def index
  	@cities = CS.get :in, :tn
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant_id: params[:id])
  end

  def get_results
  	search = params[:search]
    city = params[:city]
    if search.present? && city.present? 
  	 @results = Restaurant.where("name LIKE ? and city = ?", "#{search}%", city)
    elsif search.present?
     @results = Restaurant.where("name LIKE ?", "#{search}%")
    elsif city.present?
     @results = Restaurant.where("city = ?", city)
    end
    render :template => "restaurants/results", :locals => {:results => @results} 
  end

  def list_restaurants
    @restaurants = Restaurant.all
  end

  private
  def restaurant_params
  	params.require(:restaurant).permit(:search_term, :city, :name, :city)
  end
end
