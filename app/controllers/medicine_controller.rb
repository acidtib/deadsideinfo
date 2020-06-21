class MedicineController < ApplicationController
  def all
    @cat = Category.includes(:medicines).find_by_slug("medicine")
    @medicines = @cat.medicines.all
  end

  def show
  end
end
