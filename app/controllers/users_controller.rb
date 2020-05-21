class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def all_users
    @users = User.name
  end
end
