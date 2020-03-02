class UsersController < ApplicationController

    get '/signup' do
        if !session[:user_id]
          erb :'users/new'
        else
          "You're already signed in!"
        end
    end

    post '/signup' do
      if params[:username] == "" || params[:password] == ""
        @signup_error = "Please enter a username and a password:"
        redirect to '/signup'
      else
        @user = User.create(:username => params[:username], :password => params[:password])
        session[:user_id] = @user.id
        redirect '/'
      end
    end

end