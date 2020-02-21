class CreateRecipeBooks < ActiveRecord::Migration[5.2]

    def change
        create_table :recipe_books do |t|
            t.string :name
            t.text :description
        end
    end

end