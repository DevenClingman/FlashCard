class Card < ApplicationRecord
  belongs_to :deck
  belongs_to :category
  belongs_to :user

  def next
    Card.where( "id > ? AND deck_id= ?", self.id, self.deck_id ).first
  end

  def previous
    Card.where( "id < ? AND deck_id = ?", self.id, self.deck_id ).last
  end
end
