class AddUserIdToRecipeBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :recipe_books, :user_id, :integer
  end
end
