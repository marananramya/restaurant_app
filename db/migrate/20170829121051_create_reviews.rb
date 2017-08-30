class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :restaurant_name
      t.string :restaurant_city
      t.integer :rate
      t.text :comments
      t.belongs_to :restaurant
      t.timestamps
    end
  end
end
