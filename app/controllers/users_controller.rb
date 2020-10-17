class UsersController < ApplicationController

  def index
  end

  def show
    @books = Book.all
    @book = Book.new
    @user = User.find(params[:id])
  end
  
end
