class RecipesController < ApplicationController

    get '/recipes' do
        'recipes index'
    end

    get '/recipes/new' do
        'recipes creation form'
    end

    post '/recipes' do
        'validate, create recipe from params, pull up index'
    end

    get '/recipes/:id' do
        'load show file with @id'
    end

    get '/recipes/:id/edit' do
        'load edit form, save updated @id'
    end

    patch '/recipes/:id' do
        'in controller, update attributes. pull up index (redirect to /recipes)'
    end

    delete '/recipes/:id' do
        'delete recipe, redirect to index'
    end
end