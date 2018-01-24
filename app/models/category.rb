class Category < ApplicationRecord
  has_many :decks, dependent: :destroy
  has_many :cards, dependent: :destroy
  belongs_to :user
  
end
