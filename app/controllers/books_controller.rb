class BooksController < ApplicationController
  before_action :move_to_sign_in
  def index
    @users = User.all.order("created_at DESC")
  end

  def new
    @book = Book.new
  end

  def create 
    Book.create(book_params)
    redirect_to user_path(current_user)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to user_path(current_user)
  end

  private
  def book_params
    params.require(:book).permit(:style,:crew,:old,:video).merge(user_id: current_user.id)
  end

  def move_to_sign_in
    redirect_to new_user_session_path unless user_signed_in?
  end

end