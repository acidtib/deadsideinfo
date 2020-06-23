puts "[INFO:] creating tools"
toolsCat = Category.find_by_slug("tools").id

tools = [
  {name: "Fire Axe", slug: "fire-axe", buy: 5000, sell: 1500},
  {name: "Axe", slug: "axe", buy: 5000, sell: 1500},
  {name: "Hammer", slug: "hammer", buy: 2000, sell: 600},
  {name: "Saw", slug: "saw", buy: 2000, sell: 600},
  {name: "Circular Saw", slug: "circular-saw", buy: nil, sell: 8000},
  {name: "Flashlight", slug: "flashlight-1", buy: 1500, sell: 650},
  {name: "Flashlight", slug: "flashlight-2", buy: 3000, sell: 1200},
  {name: "Walkie-Talkie", slug: "walkie-talkie", buy: 7000, sell: 3000},
  {name: "Lighter", slug: "lighter-1", buy: 500, sell: 100},
  {name: "Lighter", slug: "lighter-2", buy: 750, sell: 150}
]

tools.each do |tool|
  Tool.create!(
    category_id: toolsCat,
    name: tool[:name],
    slug: tool[:slug],
    buy: tool[:buy],
    sell: tool[:sell]
  )
end