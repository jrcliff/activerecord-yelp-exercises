restaurants = [
    "McDonalds", 
    "Chipotle", 
    "Outback", 
    "Smokey Bones", 
    "Friday's"
]
restaurants.each do |name|
    Restaurant.create(name: self)
end
italian = Tag.create(name: "Italian")
pizza = Dish.create(name: "Pizza", restaurant_id: 1)
pizza.tags << italian
