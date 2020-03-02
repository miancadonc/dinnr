class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :url
      t.integer :rating
      t.integer :ease_of_preparation
    end
  end
end
