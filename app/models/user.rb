class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :categories, dependent: :destroy
  has_many :decks, dependent: :destroy
  has_many :cards, dependent: :destroy

  validates_presence_of :first_name, :last_name
end
