class DishTag < ActiveRecord::Base
    has_many :dishes
    has_many :tags

end