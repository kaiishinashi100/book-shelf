class BooksController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    books = Book.all
    @books = current_user.books
    @book = Book.new
  end 

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @book = Book.find(params[:id])
    @comments = @book.comments.includes(:user)
    @anotherComment = Comment.all
  end

  private

  def book_params
    params.require(:book).permit(:title, :image, :genre_id, :publisher_id).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: index
    end
  end

end
