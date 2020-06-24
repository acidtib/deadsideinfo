puts "[INFO:] creating materials"
materialsCat = Category.find_by_slug("materials").id

materials = [
  {name: "Wood Planks", buy: nil, sell: nil},
  {name: "Beam", buy: nil, sell: nil},
  {name: "Plywood", buy: nil, sell: nil},
  {name: "Burlap", buy: nil, sell: nil},
  {name: "Nails", buy: 600, sell: nil}
]

materials.each do |material|
  Material.create!(
    category_id: materialsCat,
    name: material[:name],
    slug: material[:name].parameterize,
    buy: material[:buy],
    sell: material[:sell]
  )
end