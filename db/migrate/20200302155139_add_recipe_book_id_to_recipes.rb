class AddRecipeBookIdToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :recipe_book_id, :integer
  end
end
