class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to categories_path, notice: "Category: #{@category.title} was successfully created!"
    else
      render :new, alert: "An error occurred while saving a category."
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to @category, notice: "Category: #{@category.title} was successfully updated!"
    else
      redirect_to :edit, alert: "An error occurred while editing a category."
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, notice: "Category was successfully deleted."
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:title)
  end
end
