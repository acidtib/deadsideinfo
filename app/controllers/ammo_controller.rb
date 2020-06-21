class AmmoController < ApplicationController
  def all
    @cat = Category.includes(:ammos).find_by_slug("ammo")
    @ammos = @cat.ammos.all
  end

  def show
  end
end
