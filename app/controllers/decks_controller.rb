class DecksController < ApplicationController
  before_action :set_deck, only: [:show, :edit, :update, :destroy]

  def index
    @category = Category.find(params[:category_id])
    @category_id = params[:category_id]
    @decks = Deck.all
  end

  def show
  end

  def new
    @category_id = params[:category_id]
    @deck = Deck.new
  end

  def edit
  end

  def create
    byebug
    @category_id = params[:category_id]
    @deck = Deck.new(deck_params)
    @deck.category_id = @category_id
    respond_to do |format|
      if @deck.save
        format.html { redirect_to decks_path, notice: 'Deck successfully added.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @deck.update(deck_params)
        format.html { redirect_to @deck, notice: "Deck updated." }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @deck.destroy
    respond_to do |format|
      format.html { redirect_to decks_path, notice: "Deck Deleted" }
    end
  end 

  private

  def deck_params
    params.require(:deck).permit(:name)
  end

  def set_deck
    @deck = Deck.find(params[:id])
  end
end
