class EquipmentController < ApplicationController
  def all
    @cat = Category.includes(:equipment).find_by_slug("equipment")
    @equipments = @cat.equipment.all
  end

  def show
  end
end
