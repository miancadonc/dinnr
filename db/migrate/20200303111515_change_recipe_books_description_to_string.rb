class ChangeRecipeBooksDescriptionToString < ActiveRecord::Migration[6.0]
  def change
    change_column :recipe_books, :description, :string
  end
end
