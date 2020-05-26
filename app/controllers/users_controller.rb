class UsersController < ApplicationController
  before_action :move_to_sign_in
  def show
    @user = User.find(params[:id])
    @books = @user.books.order("created_at DESC")
    @users = User.all.order("created_at DESC")
  end

  def move_to_sign_in
    redirect_to new_user_session_path unless user_signed_in?
  end
end
