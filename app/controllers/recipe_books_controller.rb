class RecipeBooksController < ApplicationController

    get '/recipe-books' do
        'recipe_books index'
    end

    get '/recipe-books/new' do
        erb :'recipe_books/new'
    end

    post '/recipe-books' do
        if params[:name] == '' || params[:description] == ''
            erb :'recipe_books/new'
        else
            book = RecipeBook.create(params)
            book.user_id = current_user.id
            redirect "/users/#{current_user.id}/show"
        end
    end

    get '/recipe-books/:id' do
        @book = RecipeBook.find(params[:id])
        erb :'recipe_books/show'
    end

    get '/recipe-books/:id/edit' do
        'load edit form, save updated @id'
    end

    patch '/recipe-books/:id' do
        'in controller, update attributes. pull up index (redirect to /recipe-books)'
    end

    delete '/recipe-books/:id' do
        'IF NEEDED ONLY delete recipe book, redirect to index'
    end
end