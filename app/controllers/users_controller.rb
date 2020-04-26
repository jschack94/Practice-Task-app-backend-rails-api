class UsersController < ApplicationController
    def index
      render json: User.all
    end
  
    def create
      user = User.new(username: params[:username], password: params[:password])
      if user.valid?
        user.save
        render json: user
      else
        render json: {error: 'user could not be created'}
      end
    end
  
    def show
      user = User.find(params[:id])
      render json: user.notes
      #show individual note
      #Do I need to nest in routes?
    end
  end