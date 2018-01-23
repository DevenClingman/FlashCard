class CardsController < ApplicationController
  before_action :set_card, :set_deck, :set_category, only: [:show, :edit, :update, :destroy]

  def index
    set_category
    set_deck
    @cards = Card.all
  end

  def show
  end

  def new
    @card = Card.new
  end

  def edit

  end

  def create
    set_category
    set_deck
    @card = Card.new(card_params)
    @card.deck_id = @deck.id
    respond_to do |format|
      if @card.save
        format.html { redirect_to category_deck_cards_path(@category.id, @deck.id, @card), notice: 'Card successfully added.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to category_deck_cards_path(@category.id, @deck.id, @card), notice: "Card updated." }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to category_deck_cards_path(@category.id, @deck.id, @card), notice: "Card Deleted" }
    end
  end 

  private

  def card_params
    params.require(:card).permit(:question, :answer, :deck_id)
  end

  def set_card
    @card = Card.find(params[:id])
  end

  def set_deck 
    @deck = Deck.find(params[:deck_id])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end
