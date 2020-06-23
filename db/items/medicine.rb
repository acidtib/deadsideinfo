puts "[INFO:] creating medicine"
medicineCat = Category.find_by_slug("medicine").id

medicines = [
  {name: "Rags", buy: nil, sell: nil, heal: 5},
  {name: "Sterilized Rag", buy: nil, sell: nil, heal: 15},
  {name: "Bandage", buy: 1000, sell: 500, heal: 40},
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