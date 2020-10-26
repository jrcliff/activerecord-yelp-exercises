class Dish < ActiveRecord::Base
has_many :tags
belongs_to :restaurant
end