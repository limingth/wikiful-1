class CategoriesController < ApplicationController
  def index
    @categories = Category.order(:name)
  end

  def show
  end
end