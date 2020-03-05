class UsersController < ApplicationController

    get '/signup' do
        if !session[:user_id]
          erb :'users/signup'
        else
          "You're already signed in!"
        end
    end

    post '/signup' do
      if params[:username] == "" || params[:password] == ""
        @signup_error = "Sorry, you didn't enter both a username and a password. Please enter a username and a password:"
        erb :'users/signup'
      else
        @user = User.create(:username => params[:username], :password => params[:password])
        session[:user_id] = @user.id
        redirect "/users/#{current_user.id}"
      end
    end

    get '/login' do
        erb :'users/login'
    end

    post '/login' do
      user = User.find_by(:username => params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect "/users/#{user.id}"
      else
        redirect "/signup"
      end
    end

    get '/users/:id' do
      if logged_in?
        @user = current_user
        erb :'users/show'
      else
        @login_error = "User not found. Please log in or sign up:"
        erb :index
      end
    end

    get "/logout" do
      session.clear
      redirect "/"
    end

end