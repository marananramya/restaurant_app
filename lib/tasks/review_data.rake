require 'csv'
namespace :db do
  task :import_review => :environment do
    ActiveRecord::Base.transaction do
      count = 0
      CSV.foreach('review.csv', :headers => true) do |row|
        begin
          name =  row[0]
          city = row[1]
          rate = row[2]
          comments = row[3]
          restaurant = Restaurant.where(name: name, city: city).first
          Review.create(restaurant_name: name, restaurant_city: city, rate: rate, comments: comments, restaurant_id: restaurant.id)
        end
      end
    end
  end
end
