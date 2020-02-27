class CreateOpinions < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.integer :rating
      t.integer :ease_of_preparation
  end
  end
end
