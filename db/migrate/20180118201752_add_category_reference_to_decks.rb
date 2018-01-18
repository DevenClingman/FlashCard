class AddCategoryReferenceToDecks < ActiveRecord::Migration[5.1]
  def change
    add_reference :decks, :category, foreign_key: true
  end
end
