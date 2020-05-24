class UsersController < ApplicationController
  before_action :move_to_sign_in
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @users = User.all
  end

  def move_to_sign_in
    redirect_to new_user_session_path unless user_signed_in?
  end
end
