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