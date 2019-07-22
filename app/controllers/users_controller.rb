# frozen_string_literal: true

# No description
class UsersController < ApplicationController
  def signup; end

  def login; end

  def show
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      
    else
      render create_path
    end
  end

  private
    def user_params
      params.required(:user).permit(:name, :email, :password, 
                                    :password_confirmation)
    end
end
