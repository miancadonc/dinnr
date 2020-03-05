require './config/environment'

class ApplicationController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :session_secret, "It's a secret!"
    end

    get '/' do
        redirect_if_logged_in
        erb :index
    end

    helpers do
        def logged_in?
            !!session[:user_id]
        end
      
        def current_user
            User.find(session[:user_id])
        end

        def redirect_if_not_authorized(user_id)
            redirect '/' unless user_id == session[:user_id]
        end

        def redirect_if_not_logged_in
            if !logged_in?
                redirect "/"
            end
        end

        def redirect_if_logged_in
            if logged_in?
                redirect "/users/#{current_user.id}"
            end
        end

    end

end