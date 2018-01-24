class Deck < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :cards, dependent: :destroy
end
