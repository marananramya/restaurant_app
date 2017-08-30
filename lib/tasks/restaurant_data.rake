require 'csv'
namespace :db do
  task :import_restaurant => :environment do
    ActiveRecord::Base.transaction do
      count = 0
      CSV.foreach('restaurant.csv', :headers => true) do |row|
        begin
          name =  row[0]
          city = row[1]
          restaurant = Restaurant.create(name: name, city: city)
        end
      end
    end
  end
end
