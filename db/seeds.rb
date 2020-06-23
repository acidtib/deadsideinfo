# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "[INFO:] creating categories"
categories = [
  {name: "Ammo"},
  {name: "Weapons"},
  {name: "Equipment"},
  {name: "Food/Drinks"},
  {name: "Medicine"},
  {name: "Tools"}
]

categories.each do |cat|
  Category.create!(
    name: cat[:name],
    slug: cat[:name].parameterize
  )
end


load File.join(Rails.root, 'db', 'items', 'ammo.rb')

load File.join(Rails.root, 'db', 'items', 'weapons.rb')

load File.join(Rails.root, 'db', 'items', 'equipment.rb')

load File.join(Rails.root, 'db', 'items', 'food_drinks.rb')

load File.join(Rails.root, 'db', 'items', 'medicine.rb')