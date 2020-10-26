Restaurant.destroy_all
Dish.destroy_all
Tag.destroy_all


# restaurants = [
#     "McDonalds", 
#     "Chipotle", 
#     "Outback", 
#     "Smokey Bones", 
#     "Friday's"
# ]
20.times do 
    Restaurant.create(name: Faker::Restaurant.unique.name)
end

Restaurant.all.each do |restaurant|
    10.times do
       dish = Dish.create(name: Faker::Food.dish, restaurant: restaurant)
        # binding.pry
    end
end

15.times do 
    Tag.create(name: Faker::Restaurant.unique.type)
end

Dish.all.each do |dish|
    # bread = Tag.find_by(name: "Bread")
    3.times do 
        # binding.pry
        
        dish.tags << Tag.all.sample
    end
end

italian = Tag.create(name: "Italian")
pizza = Dish.create(name: "Pizza")
italian.dishes << pizza
