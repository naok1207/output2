class WordBooksController < ApplicationController
  def index
    @word_books = current_user.word_books
  end

  def show
    @word_book = current_user.word_books.find(params[:id])
  end

  def new
    @word_book = current_user.word_books.new
  end

  def create
    @word_book = current_user.word_books.new(word_book_params)
    if @word_book.save
      redirect_to @word_book
    else
      render :new
    end
  end

  def edit
    @word_book = current_user.word_books.find(params[:id])
  end

  def update
    @word_book = current_user.word_books.find(params[:id])
    if @word_book.update(word_book_params)
      redirect_to @word_book
    else
      render :edit
    end
  end

  def destroy
    word_book = current_user.word_books.find(params[:id])
    word_book.destroy
    redirect_to word_books_path
  end

  private
  def word_book_params
    params.require(:word_book).permit(:title, :description)
  end
end
