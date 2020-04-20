class AuthController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: { id: user.id, username: user.username }
        else
            render json: { error: 'invalid username or password' }
        end
        #find user in the db
        #see if the pw matches the user that was found
        #send the user back to the frontend if success or send error message
    end

    def show
    end