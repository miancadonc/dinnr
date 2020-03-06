class RecipeBooksController < ApplicationController

    get '/recipe-books' do
        #redirect "/users/#{current_user.id}"
        erb :'recipe_books/index'
    end

    get '/recipe-books/new' do
        redirect_if_not_logged_in
        erb :'recipe_books/new'
    end

    post '/recipe-books' do
        if params[:name] == '' || params[:description] == ''
            erb :'recipe_books/new'
        else
            # book = RecipeBook.create(params)
            # book.user_id = current_user.id
            # book.save
            current_user.recipe_books.create(params)
            redirect "/users/#{current_user.id}"
        end
    end

    get '/recipe-books/:id' do
        @book = RecipeBook.find(params[:id])
        erb :'recipe_books/show'
    end

    get '/recipe-books/:id/edit' do
        @recipe_book = RecipeBook.find(params[:id])
        redirect_if_not_authorized(@recipe_book.user_id)
        erb :'recipe_books/edit'
    end

    patch '/recipe-books/:id' do
        @recipe_book = RecipeBook.find(params[:id])
        if params[:name] == '' || params[:description] == ''
            redirect "/recipe-books/#{@recipe_book.id}/edit"
        else
            redirect_if_not_authorized(@recipe_book.user_id)
            @recipe_book.name = params[:name]
            @recipe_book.description = params[:description]
            @recipe_book.save
            redirect to "/users/#{current_user.id}"
        end
    end

    delete '/recipe-books/:id' do
        @recipe_book = RecipeBook.find(params[:id])
        redirect_if_not_authorized(@recipe_book.user_id)
        @recipe_book.destroy
        redirect "/users/#{current_user.id}"
    end
end