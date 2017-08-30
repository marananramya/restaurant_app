Rails.application.routes.draw do

  get 'restaurants/index'
  get 'restaurants/show'
  post 'restaurants/get_results' => 'restaurants#get_results'
  post 'reviews/create_review' => 'reviews#create_review'
  get 'restaurants/list_restaurants' => 'restaurants#list_restaurants'
  get 'reviews/list_reviews' => 'reviews#list_reviews'
  root 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
