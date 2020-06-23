puts "[INFO:] creating food and drinks"
foodDrinksCat = Category.find_by_slug("food-drinks").id

foodDrinks = [
  {name: "Canned Fish", slug: "canned-fish", buy: 500, sell: 250, food: 30, water: 5, health: 1},
  {name: "Meat Porridge", slug: "meat-porridge", buy: 500, sell: 250, food: 30, water: 5, health: 1},
  {name: "Canned Beef", slug: "canned-beef", buy: 500, sell: 250, food: 30, water: 5, health: 1},
  {name: "Canned Pineapple", slug: "canned-pineapple", buy: 500, sell: 250, food: 30, water: 5, health: 1},
  {name: "Tomato Soup", slug: "tomato-soup", buy: 500, sell: 250, food: 30, water: 5, health: 1},
  {name: "Soda", slug: "soda-1", buy: 350, sell: 175, food: nil, water: 50, health: nil},
  {name: "Soda", slug: "soda-2", buy: 350, sell: 175, food: nil, water: 50, health: nil},
  {name: "Soda", slug: "soda-3", buy: 350, sell: 175, food: nil, water: 50, health: nil}
]

foodDrinks.each do |fd|
  FoodDrink.create!(
    category_id: foodDrinksCat,
    name: fd[:name],
    slug: fd[:slug],
    buy: fd[:buy],
    sell: fd[:sell],
    food: fd[:food],
    water: fd[:water],
    health: fd[:health]
  )
end