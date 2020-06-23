puts "[INFO:] creating equipment"
equipmentCat = Category.find_by_slug("equipment").id

equipments = [
  {name: "Tracksuit Jacket", slug: "tracksuit-jacket-1", buy: 1000, sell: nil, armor: nil, slots: 2},
  {name: "Tracksuit Pants", slug: "tracksuit-pants-1", buy: 1000, sell: nil, armor: nil, slots: 2},
  {name: "Tracksuit Jacket", slug: "tracksuit-jacket-2", buy: 1000, sell: nil, armor: nil, slots: 2},
  {name: "Tracksuit Pants", slug: "tracksuit-pants-2", buy: 1000, sell: nil, armor: nil, slots: 2},
  {name: "Tracksuit Jacket", slug: "tracksuit-jacket-3", buy: 1000, sell: nil, armor: nil, slots: 2},
  {name: "Tracksuit Pants", slug: "tracksuit-pants-3", buy: 1000, sell: nil, armor: nil, slots: 2},
  {name: "Tracksuit Jacket", slug: "tracksuit-jacket-4", buy: 1000, sell: nil, armor: nil, slots: 2},
  {name: "Tracksuit Pants", slug: "tracksuit-pants-4", buy: 1000, sell: nil, armor: nil, slots: 2},
  {name: "Jeans Jacket", slug: "jeans-jacket-1", buy: 2000, sell: nil, armor: nil, slots: 4},
  {name: "Jeans", slug: "jeans-1", buy: 2000, sell: nil, armor: nil, slots: 4},
  {name: "Jeans Jacket", slug: "jeans-jacket-2", buy: 2000, sell: nil, armor: nil, slots: 4},
  {name: "Jeans", slug: "jeans-2", buy: 2000, sell: nil, armor: nil, slots: 4},
  {name: "Bomber Jacket", slug: "bomber-jacket-1", buy: 2000, sell: nil, armor: nil, slots: 4},
  {name: "Hunter Trousers", slug: "hunter-trousers-1", buy: 2000, sell: nil, armor: nil, slots: 4},
  {name: "Bomber Jacket", slug: "bomber-jacket-2", buy: 2000, sell: nil, armor: nil, slots: 4},
  {name: "Hunter Trousers", slug: "hunter-trousers-2", buy: 2000, sell: nil, armor: nil, slots: 4},
  {name: "Gorka Jacket", slug: "gorka-jacket-1", buy: 5000, sell: 1000, armor: nil, slots: 4},
  {name: "Gorka Trousers", slug: "gorka-trousers-1", buy: 5000, sell: 1000, armor: nil, slots: 4},
  {name: "Gorka Jacket", slug: "gorka-jacket-2", buy: 5000, sell: 1000, armor: nil, slots: 4},
  {name: "Gorka Trousers", slug: "gorka-trousers-2", buy: 5000, sell: 1000, armor: nil, slots: 4},
  {name: "Gorka Pants", slug: "gorka-pants-1", buy: nil, sell: 1000, armor: nil, slots: 4},
  {name: "Gorka Shirt", slug: "gorka-camo-shirt-1", buy: nil, sell: 1000, armor: nil, slots: 4},
  {name: "Gorka Pants", slug: "gorka-camo-pants-1", buy: nil, sell: 1000, armor: nil, slots: 4},
  {name: "Tracksuit Pants", slug: "tracksuit-pants-camo-1", buy: nil, sell: nil, armor: nil, slots: 2},
  {name: "Hiking Jacket", slug: "hiking-jacket-grey-1", buy: nil, sell: nil, armor: nil, slots: 2},
  {name: "Hunter Vest", slug: "hunter-vest-1", buy: 2500, sell: 500, armor: nil, slots: 6},
  {name: "Hunter Vest", slug: "hunter-vest-2", buy: 2500, sell: 500, armor: nil, slots: 6},
  {name: "Hunter Vest", slug: "hunter-vest-3", buy: nil, sell: nil, armor: nil, slots: 6},
  {name: "Field Vest", slug: "field-vest-1", buy: 7500, sell: 1500, armor: nil, slots: 8},
  {name: "Field Vest", slug: "field-vest-2", buy: 7500, sell: 1500, armor: nil, slots: 8},
  {name: "Tactical Vest", slug: "tactical-vest-1", buy: 25000, sell: 10000, armor: nil, slots: 10},
  {name: "Tactical Vest", slug: "tactical-vest-2", buy: 25000, sell: 10000, armor: nil, slots: 10},
  {name: "Police Vest", slug: "police-vest-1", buy: 25000, sell: 5000, armor: nil, slots: nil},
  {name: "Police Vest", slug: "police-vest-2", buy: 25000, sell: 5000, armor: nil, slots: nil},
  {name: "Assault Vest", slug: "assault-vest-1", buy: 50000, sell: 10000, armor: nil, slots: nil},
  {name: "Assault Vest", slug: "assault-vest-2", buy: 50000, sell: 10000, armor: nil, slots: nil},
  {name: "Heavy Assault Vest", slug: "heavy-assault-vest-1", buy: 150000, sell: 30000, armor: 50, slots: nil},
  {name: "Heavy Assault Vest", slug: "heavy-assault-vest-2", buy: 150000, sell: 30000, armor: 50, slots: nil},
  {name: "Bag", slug: "bag-1", buy: 5000, sell: 1000, armor: nil, slots: nil},
  {name: "Bag", slug: "bag-2", buy: 5000, sell: 1000, armor: nil, slots: nil},
  {name: "Assault Backpack", slug: "assault-backpack-1", buy: 25000, sell: 5000, armor: nil, slots: nil},
  {name: "Assault Backpack", slug: "assault-backpack-2", buy: 25000, sell: 5000, armor: nil, slots: nil},
  {name: "Typhoon Backpack", slug: "typhoon-backpack-1", buy: 50000, sell: 10000, armor: nil, slots: nil},
  {name: "Typhoon Backpack", slug: "typhoon-backpack-2", buy: 50000, sell: 10000, armor: nil, slots: nil},
  {name: "Stalker Backpack", slug: "stalker-backpack-1", buy: 150000, sell: 30000, armor: nil, slots: 15},
  {name: "Stalker Backpack", slug: "stalker-backpack-2", buy: 150000, sell: 30000, armor: nil, slots: 15},
  {name: "Hard Hat", slug: "hard-hat-1", buy: 1000, sell: 200, armor: nil, slots: nil},
  {name: "Hard Hat", slug: "hard-hat-2", buy: 1000, sell: 200, armor: nil, slots: nil},
  {name: "Moto Helmet", slug: "moto-helmet-1", buy: 5000, sell: 1000, armor: nil, slots: nil},
  {name: "Moto Helmet", slug: "moto-helmet-2", buy: 5000, sell: 1000, armor: nil, slots: nil},
  {name: "Tactical Helmet", slug: "tactical-helmet-1", buy: 10000, sell: 2000, armor: nil, slots: nil},
  {name: "Tactical Helmet", slug: "tactical-helmet-2", buy: 10000, sell: 2000, armor: nil, slots: nil},
  {name: "Assault Helmet", slug: "assault-helmet-1", buy: 20000, sell: 4000, armor: nil, slots: nil},
  {name: "Assault Helmet", slug: "assault-helmet-2", buy: 20000, sell: 4000, armor: nil, slots: nil},
  {name: "Heavy Assault Helmet", slug: "heavy-assault-helmet-1", buy: 60000, sell: 12000, armor: nil, slots: nil},
  {name: "Heavy Assault Helmet", slug: "heavy-assault-helmet-2", buy: 60000, sell: 12000, armor: nil, slots: nil},
  {name: "Balaclava", slug: "balaclava-1", buy: 900, sell: 170, armor: nil, slots: nil},
  {name: "Balaclava", slug: "balaclava-2", buy: 900, sell: 170, armor: nil, slots: nil},
  {name: "Balaclava", slug: "balaclava-3", buy: 900, sell: 170, armor: nil, slots: nil},
  {name: "Ski Mask", slug: "ski-mask-1", buy: 1400, sell: 280, armor: nil, slots: nil},
  {name: "Ski Mask", slug: "ski-mask-2", buy: 1400, sell: 280, armor: nil, slots: nil},
  {name: "Ski Mask", slug: "ski-mask-3", buy: 1400, sell: 280, armor: nil, slots: nil},
  {name: "Ski Mask", slug: "ski-mask-4", buy: nil, sell: 280, armor: nil, slots: nil},
  {name: "Buff", slug: "buff-1", buy: 1400, sell: 280, armor: nil, slots: nil},
  {name: "Buff", slug: "buff-2", buy: 1400, sell: 280, armor: nil, slots: nil},
  {name: "Buff", slug: "buff-3", buy: 1400, sell: 280, armor: nil, slots: nil},
  {name: "Buff", slug: "buff-4", buy: nil, sell: nil, armor: nil, slots: nil},
  {name: "Beanie", slug: "beanie-1", buy: 500, sell: nil, armor: nil, slots: nil},
  {name: "Beanie", slug: "beanie-2", buy: 500, sell: nil, armor: nil, slots: nil},
  {name: "Beanie", slug: "beanie-3", buy: 500, sell: nil, armor: nil, slots: nil},
  {name: "Panama", slug: "panama-1", buy: 500, sell: nil, armor: nil, slots: nil},
  {name: "Panama", slug: "panama-2", buy: 500, sell: nil, armor: nil, slots: nil},
  {name: "Panama", slug: "panama-3", buy: 500, sell: nil, armor: nil, slots: nil},
  {name: "Tactical Gloves", slug: "tactical-gloves-1", buy: 1000, sell: 200, armor: nil, slots: nil},
  {name: "Hunter Gloves", slug: "hunter-gloves-1", buy: 500, sell: nil, armor: nil, slots: nil},
  {name: "Hunter Gloves", slug: "hunter-gloves-2", buy: 500, sell: nil, armor: nil, slots: nil},
  {name: "Improvised Backpack", slug: "improvised-backpack-1", buy: nil, sell: nil, armor: nil, slots: 5}
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