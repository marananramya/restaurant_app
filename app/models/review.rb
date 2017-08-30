class Review < ApplicationRecord
	belongs_to :restaurant
	validates_presence_of :rate
	validates_presence_of :comments
end
