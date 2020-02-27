class CreateRecipeBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_books do |t|
      t.string :name
      t.text :description
    end
  end
end
