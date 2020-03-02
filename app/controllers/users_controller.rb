class UsersController < ApplicationController
    get '/signup' do
        if !session[:user_id]
          erb :'users/new'
        else
          redirect to '/recipe_books'
        end
      end
end