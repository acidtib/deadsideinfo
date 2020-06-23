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