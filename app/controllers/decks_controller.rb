class DecksController < ApplicationController
  before_action :set_deck, :set_category, only: [:show, :edit, :update, :destroy]

  def index
    set_category
    @category_id = params[:category_id]
    @decks = Deck.all
  end

  def show
  end

  def new
    @deck = Deck.new
  end

  def edit
  end

  def create
    @category_id = params[:category_id]
    @deck = Deck.new(deck_params)
    @deck.category_id = @category_id
    @deck.user_id = current_user.id
    respond_to do |format|
      if @deck.save
        format.html { redirect_to category_decks_path(@category_id), notice: 'Deck successfully added.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @deck.update(deck_params)
        format.html { redirect_to category_decks_path(@category.id, @deck), notice: "Deck updated." }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @deck.destroy
    respond_to do |format|
      format.html { redirect_to category_decks_path(@category.id), notice: "Deck Deleted" }
    end
  end 

  private

  def deck_params
    params.require(:deck).permit(:name, :category_id, :user_id)
  end

  def set_deck
    @deck = Deck.find(params[:id])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end
