class User < ActiveRecord::Base
    has_many :recipe_books
    has_many :recipes through:recipe_books

end