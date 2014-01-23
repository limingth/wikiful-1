class CategoriesController < ApplicationController
  before_filter :authorize, only: [:new]
  
  def index
    @categories = Category.order(:name)
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
      render "new"
    end
  end

  private 
    def category_params
      params.require(:category).permit(:name)
    end
end