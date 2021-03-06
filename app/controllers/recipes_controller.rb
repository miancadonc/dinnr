class RecipesController < ApplicationController

    # get '/recipes' do
    #     'recipes index'
    # end

    # get '/recipes/new' do
    #     erb :'recipes/new'
    # end

    post '/recipes' do
        if params[:name] == '' || params[:url_location] == ''
            redirect "/users/#{current_user.id}"
        else
            recipe = Recipe.create(params)
         
            redirect "/recipe-books/#{recipe.recipe_book_id}"
        end
    end

    # get '/recipes/:id' do
    #     'load show file with @id'
    # end

    # get '/recipes/:id/edit' do
    #     'load edit form, save updated @id'
    # end

    # patch '/recipes/:id' do
    #     'in controller, update attributes. pull up index (redirect to /recipes)'
    # end

    delete '/recipes/:id' do
        recipe = Recipe.find(params[:id])
        recipe.destroy
        redirect "/recipe-books/#{recipe.recipe_book_id}"
    end
end