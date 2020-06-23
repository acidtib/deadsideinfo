class WeaponController < ApplicationController
  def all
    @cat = Category.includes(:weapons).find_by_slug("weapons")
    @weapons = @cat.weapons.includes(:ammo_uses).all
  end

  def show
  end
end
