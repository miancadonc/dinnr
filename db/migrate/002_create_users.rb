class CreateUsers < ActiveRecord::Migration[5.2]

    def change
        create_table :users do |t|
            t.text :user_name
        end
    end

end