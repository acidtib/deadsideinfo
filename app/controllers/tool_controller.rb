class ToolController < ApplicationController
  def all
    @cat = Category.includes(:tools).find_by_slug("tools")
    @tools = @cat.tools.all
  end

  def show
  end
end
