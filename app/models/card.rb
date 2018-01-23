class Card < ApplicationRecord
  belongs_to :deck
  belongs_to :category
  belongs_to :user
end
