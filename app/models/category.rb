class Category < ApplicationRecord
  has_many :decks
  has_many :cards
  belongs_to :user
  
end
