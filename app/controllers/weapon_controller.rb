class WeaponController < ApplicationController
  def all
    @cat = Category.includes(:weapons).find_by_slug("weapons")
    @weapons = @cat.weapons.all
  end

  def show
  end
end
