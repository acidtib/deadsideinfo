puts "[INFO:] creating weapons"
weaponsCat = Category.find_by_slug("weapons").id

weapons = [
  {name: "IZH-43S", slug: "izh-43s", buy: 2000, sell: 400, mag: 8, weapon_type: "Pistol", ammo: "9x19"},
  {name: "TTk", slug: "ttk", buy: 3000, sell: 600, mag: 9, weapon_type: "Pistol", ammo: "7.62x25"},
  {name: "Berta M9", slug: "berta-m9", buy: 10000, sell: 2000, mag: 15, weapon_type: "Pistol", ammo: "9x19"},
  {name: "C1911", slug: "c1911", buy: 10000, sell: 2000, mag: 7, weapon_type: "Pistol", ammo: ".45"},
  {name: "F-57", slug: "f-57", buy: 12000, sell: 2400, mag: 20, weapon_type: "Pistol", ammo: "5.7x28"},

  {name: "Scorp", slug: "scorp", buy: 6000, sell: 1200, mag: 20, weapon_type: "SMG", ammo: "9x19"},
  {name: "MR5", slug: "mr5", buy: 30000, sell: 6000, mag: 30, weapon_type: "SMG", ammo: "9x19"},
  {name: "UMR45", slug: "umr45", buy: 30000, sell: 6000, mag: 30, weapon_type: "SMG", ammo: ".45"},
  {name: "P900", slug: "p900", buy: 150000, sell: 30000, mag: 200, weapon_type: "SMG", ammo: "5.7x28"},
  {name: "AK-SM", slug: "ak-sm", buy: 45000, sell: 9000, mag: 30, weapon_type: "SMG", ammo: "5.45x39"},
  {name: "BB-19", slug: "bb-19", buy: 50000, sell: 10000, mag: 35, weapon_type: "SMG", ammo: "7.62x25"},

  {name: "AK-SU", slug: "ak-su", buy: 30000, sell: 6000, mag: 30, weapon_type: "Assault Rifle", ammo: "5.45x39"},
  {name: "AK-mod", slug: "ak-mod", buy: 50000, sell: 10000, mag: 30, weapon_type: "Assault Rifle", ammo: "7.62x39"},
  {name: "AR4", slug: "ar4", buy: 150000, sell: 30000, mag: 30, weapon_type: "Assault Rifle", ammo: "5.56x45"},
  {name: "UAG", slug: "uag", buy: 120000, sell: 24000, mag: 30, weapon_type: "Assault Rifle", ammo: "5.56x45"},
  {name: "Grom", slug: "grom", buy: 90000, sell: 18000, mag: 30, weapon_type: "Assault Rifle", ammo: "7.62x39"},

  {name: "IZH-43S", slug: "izh-43s-s", buy: 1000, sell: 400, mag: 2, weapon_type: "Shotgun", ammo: "12x70"},
  {name: "IZH-43", slug: "izh-43", buy: 2500, sell: 500, mag: 2, weapon_type: "Shotgun", ammo: "12x70"},
  {name: "M133", slug: "m133", buy: 6000, sell: 1200, mag: 5, weapon_type: "Shotgun", ammo: "12x70"},
  {name: "MS590", slug: "ms590", buy: 30000, sell: 6000, mag: 10, weapon_type: "Shotgun", ammo: "12x70"},
  {name: "N4", slug: "n4", buy: 150000, sell: 30000, mag: 7, weapon_type: "Shotgun", ammo: "12x70"},

  {name: "S85", slug: "s85", buy: 6000, sell: 1200, mag: 4, weapon_type: "Bolt Action", ammo: "5.56x45"},
  {name: "Mosin-K", slug: "mosin-k", buy: 30000, sell: 6000, mag: 5, weapon_type: "Bolt Action", ammo: "7.62x54R"},
  {name: "Mosin", slug: "mosin", buy: 50000, sell: 10000, mag: 5, weapon_type: "Bolt Action", ammo: "7.62x54R"},
  {name: "VSD", slug: "vsd", buy: 150000, sell: 30000, mag: 10, weapon_type: "Bolt Action", ammo: "7.62x54R"},

  {name: "GRM-40", slug: "grm-40", buy: 200000, sell: 40000, mag: 1, weapon_type: "Grenade Launcher", ammo: "VG-25"},

  {name: "Weapon Flashlight", slug: "weapon-flashlight-1", buy: 2500, sell: 500, mag: nil, weapon_type: "Attachment"},
  {name: "Weapon Flashlight", slug: "weapon-flashlight-2", buy: 5000, sell: 1000, mag: nil, weapon_type: "Attachment"},
  {name: "MP133 Mag Extender", slug: "mp133-mag-extender", buy: 5000, sell: 1000, mag: nil, weapon_type: "Attachment"},
  {name: "Collimator Sight", slug: "collimator-sight-1", buy: 15000, sell: 3000, mag: nil, weapon_type: "Attachment"},
  {name: "Collimator Sight", slug: "collimator-sight-2", buy: 15000, sell: 3000, mag: nil, weapon_type: "Attachment"},
  {name: "Collimator Sight", slug: "collimator-sight-3", buy: 20000, sell: 4000, mag: nil, weapon_type: "Attachment"},
  {name: "POS-1", slug: "pos-1", buy: 40000, sell: 8000, mag: nil, weapon_type: "Attachment"},
  {name: "PU", slug: "pu", buy: 35000, sell: 7000, mag: nil, weapon_type: "Attachment"},
  {name: "COD", slug: "cod", buy: 35000, sell: 7000, mag: nil, weapon_type: "Attachment"},
  {name: "HMR", slug: "hmr", buy: 40000, sell: 8000, mag: nil, weapon_type: "Attachment"},

  {name: "Knife", slug: "knife", buy: 800, sell: 160, mag: nil, weapon_type: "Melee"},
  {name: "DLC Knife", slug: "dlc-knife", buy: 800, sell: 200, mag: nil, weapon_type: "Melee"}
]

weapons.each do |weapon|
  newWeapon = Weapon.create!(
    category_id: weaponsCat,
    name: weapon[:name],
    slug: weapon[:slug],
    buy: weapon[:buy],
    sell: weapon[:sell],
    mag: weapon[:mag],
    weapon_type: weapon[:weapon_type]
  )

  if weapon[:ammo]
    ammoId = Ammo.find_by_name(weapon[:ammo]).id

    newWeapon.ammo_uses.create!(
      ammo_id: ammoId
    )
  end
end