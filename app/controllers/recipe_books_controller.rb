class RecipeBooksController < ApplicationController

    get '/recipe-books' do
        'recipe_books index'
    end

    get '/recipe-books/new' do
        'recipe-books creation form'
    end

    post '/recipe-books' do
        'validate, create book from params, pull up index'
    end

    get '/recipe-books/:id' do
        'load show file with @id'
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