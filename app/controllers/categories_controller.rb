class CategoriesController < ApplicationController

  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    if current_user.categories != nil
      @user_categories = current_user.categories
    else
      @user_categories = create_category
    end
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    @category.user_id = current_user.id
    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_path, notice: 'Category successfully added.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: "Category updated." }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_path, notice: "Category Deleted" }
    end
  end 

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    byebug
    @category = Category.find(params[:id])
  end

  def create_category
    Category.create!(name: "Example Category", user_id: current_user.id)
  end
end
