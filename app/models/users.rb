class User < ActiveRecord::Base
    has_many :recipe_books

end