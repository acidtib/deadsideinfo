class MaterialController < ApplicationController
  def all
    @cat = Category.includes(:materials).find_by_slug("materials")
    @materials = @cat.materials.all
  end

  def show
  end
end
