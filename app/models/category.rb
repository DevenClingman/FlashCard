class Category < ApplicationRecord
  has_many :decks
  belongs_to :user
end
