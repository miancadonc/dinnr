class CreateRecipes < ActiveRecord::Migration[5.2]

    def change
        create_table :recipes do |t|
            t.string :name
            t.integer :rating
            t.integer :ease_of_preparation
        end
    end

end