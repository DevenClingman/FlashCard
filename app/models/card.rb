class Card < ApplicationRecord
  belongs_to :deck
  belongs_to :category
  belongs_to :user

  def self.next
    Card.next(self.id).first
  end

  def self.previous
    Card.previous(self.id).first
  end
end
