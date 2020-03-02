class User < ActiveRecord::Base
    has_many :recipe_books
    has_secure_password
end