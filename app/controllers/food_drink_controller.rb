class FoodDrinkController < ApplicationController
  def all
    @cat = Category.includes(:food_drinks).find_by_slug("food-drinks")
    @items = @cat.food_drinks.all
  end

  def show
  end
end
