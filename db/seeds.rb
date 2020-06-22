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


puts "[INFO:] creating ammo"
ammoCat = Category.find_by_slug("ammo").id

ammos = [
  {name: "12x70", buy: 1000, sell: 200},
  {name: "9x18", buy: 1000, sell: 200},
  {name: "9x19", buy: 1000, sell: 200},
  {name: "7.62x25", buy: 1000, sell: 200},
  {name: "7.62x39", buy: 1500, sell: 300},
  {name: ".45", buy: 1500, sell: 300},
  {name: "5.45x39", buy: 1500, sell: 300},
  {name: "5.56x45", buy: 1500, sell: 300},
  {name: "5.7x28", buy: 2000, sell: 400},
  {name: "7.62x54R", buy: 4000, sell: 800},
  {name: "R-5", buy: 2000, sell: 400},
  {name: "F-10", buy: 3000, sell: 600}
]

ammos.each do |ammo|
  Ammo.create!(
    category_id: ammoCat,
    name: ammo[:name],
    slug: ammo[:name].parameterize,
    buy: ammo[:buy],
    sell: ammo[:sell]
  )
end


puts "[INFO:] creating weapons"
weaponsCat = Category.find_by_slug("weapons").id

weapons = [
  {name: "IZH-43S", slug: "izh-43s", buy: 2000, sell: 400, mag: 8, weapon_type: "Pistol"},
  {name: "TTk", slug: "ttk", buy: 3000, sell: 600, mag: 9, weapon_type: "Pistol"},
  {name: "Berta M9", slug: "berta-m9", buy: 10000, sell: 2000, mag: 15, weapon_type: "Pistol"},
  {name: "C1911", slug: "c1911", buy: 10000, sell: 2000, mag: 7, weapon_type: "Pistol"},
  {name: "Scorp", slug: "scorp", buy: 6000, sell: 1200, mag: 20, weapon_type: "SMG"},
  {name: "MR5", slug: "mr5", buy: 30000, sell: 6000, mag: 30, weapon_type: "SMG"},
  {name: "UMR45", slug: "umr45", buy: 30000, sell: 6000, mag: 30, weapon_type: "SMG"},
  {name: "P900", slug: "p900", buy: 150000, sell: 30000, mag: 200, weapon_type: "SMG"},
  {name: "AK-SU", slug: "ak-su", buy: 30000, sell: 6000, mag: 30, weapon_type: "Assault Rifle"},
  {name: "AK-mod", slug: "ak-mod", buy: 50000, sell: 10000, mag: 30, weapon_type: "Assault Rifle"},
  {name: "AR4", slug: "ar4", buy: 150000, sell: 30000, mag: 30, weapon_type: "Assault Rifle"},
  {name: "IZH-43S", slug: "izh-43s-s", buy: 1000, sell: 400, mag: 2, weapon_type: "Shotgun"},
  {name: "IZH-43", slug: "izh-43", buy: 2500, sell: 500, mag: 2, weapon_type: "Shotgun"},
  {name: "M133", slug: "m133", buy: 6000, sell: 1200, mag: 5, weapon_type: "Shotgun"},
  {name: "MS590", slug: "ms590", buy: 30000, sell: 6000, mag: 10, weapon_type: "Shotgun"},
  {name: "N4", slug: "n4", buy: 150000, sell: 30000, mag: 7, weapon_type: "Shotgun"},
  {name: "S85", slug: "s85", buy: 6000, sell: 1200, mag: 4, weapon_type: "Bolt Action"},
  {name: "Mosin-K", slug: "mosin-k", buy: 30000, sell: 6000, mag: 5, weapon_type: "Bolt Action"},
  {name: "Mosin", slug: "mosin", buy: 50000, sell: 10000, mag: 5, weapon_type: "Bolt Action"},
  {name: "VSD", slug: "vsd", buy: 150000, sell: 30000, mag: 10, weapon_type: "Bolt Action"},
  {name: "Weapon Flashlight", slug: "weapon-flashlight-1", buy: 2500, sell: 500, mag: nil, weapon_type: "Attachment"},
  {name: "Weapon Flashlight", slug: "weapon-flashlight-2", buy: 5000, sell: 1000, mag: nil, weapon_type: "Attachment"},
  {name: "MP133 Mag Extender", slug: "mp133-mag-extender", buy: 5000, sell: 1000, mag: nil, weapon_type: "Attachment"},
  {name: "Collimator Sight", slug: "collimator-sight-1", buy: 15000, sell: 3000, mag: nil, weapon_type: "Attachment"},
  {name: "Collimator Sight", slug: "collimator-sight-2", buy: 15000, sell: 3000, mag: nil, weapon_type: "Attachment"},
  {name: "Collimator Sight", slug: "collimator-sight-3", buy: 20000, sell: 4000, mag: nil, weapon_type: "Attachment"},
  {name: "Knife", slug: "knife", buy: 800, sell: 160, mag: nil, weapon_type: "Melee"},
  {name: "DLC Knife", slug: "dlc-knife", buy: 800, sell: 200, mag: nil, weapon_type: "Melee"}
]

weapons.each do |weapon|
  Weapon.create!(
    category_id: weaponsCat,
    name: weapon[:name],
    slug: weapon[:slug],
    buy: weapon[:buy],
    sell: weapon[:sell],
    mag: weapon[:mag],
    weapon_type: weapon[:weapon_type]
  )
end


puts "[INFO:] creating equipment"
equipmentCat = Category.find_by_slug("equipment").id

equipments = [
  {name: "Tracksuit Jacket", slug: "tracksuit-jacket-1", buy: 1000, sell: nil, armor: nil, slots: 2}
]

equipments.each do |equipment|
  Equipment.create!(
    category_id: equipmentCat,
    name: equipment[:name],
    slug: equipment[:slug],
    buy: equipment[:buy],
    sell: equipment[:sell],
    armor: equipment[:armor],
    slots: equipment[:slots]
  )
end


puts "[INFO:] creating food and drinks"
foodDrinksCat = Category.find_by_slug("food-drinks").id

foodDrinks = [
  {name: "Canned Fish", slug: "canned-fish", buy: 500, sell: 250, food: nil, water: nil, health: nil},
  {name: "Meat Porridge", slug: "meat-porridge", buy: 500, sell: 250, food: nil, water: nil, health: nil},
  {name: "Canned Beef", slug: "canned-beef", buy: 500, sell: 250, food: 30, water: 5, health: nil},
  {name: "Canned Pineapple", slug: "canned-pineapple", buy: 500, sell: 250, food: nil, water: nil, health: nil},
  {name: "Tomato Soup", slug: "tomato-soup", buy: 500, sell: 250, food: nil, water: nil, health: nil},
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


puts "[INFO:] creating medicine"
medicineCat = Category.find_by_slug("medicine").id

medicines = [
  {name: "Rags", buy: nil, sell: nil, heal: 6},
  {name: "Sterilized Rag", buy: nil, sell: nil, heal: 15},
  {name: "Bandage", buy: 1000, sell: 500, heal: 35},
  {name: "Vodka", buy: nil, sell: 800, heal: nil},
  {name: "Moonshine", buy: nil, sell: 1300, heal: nil},
  {name: "Rubbing Alcohol", buy: nil, sell: 1600, heal: nil}
]

medicines.each do |medicine|
  Medicine.create!(
    category_id: medicineCat,
    name: medicine[:name],
    slug: medicine[:name].parameterize,
    buy: medicine[:buy],
    sell: medicine[:sell],
    heal: medicine[:heal]
  )
end
