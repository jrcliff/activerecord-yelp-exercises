Restaurant.destroy_all

restaurants = [
    "McDonalds", 
    "Chipotle", 
    "Outback", 
    "Smokey Bones", 
    "Friday's"
]
restaurants.each do |name|
    Restaurant.create(name: name)
end
italian = Tag.create(name: "Italian")
pizza = Dish.create(name: "Pizza")
italian.dishes << pizza
pizza.tags << italian
