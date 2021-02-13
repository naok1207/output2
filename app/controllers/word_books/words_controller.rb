class WordBooks::WordsController < ApplicationController
  def index
    @word = current_user.words.new
    @word_book = current_user.word_books.find(params[:word_book_id])
    @words = @word_book.words
  end

  def create
    @word = current_user.words.create(word_params)
    @word_book = current_user.word_books.find(params[:word_book_id])
    @word_book.add_word(@word)
  end

  def destroy
    @word = current_user.words.find(params[:id])
    word_book = current_user.word_books.find(params[:word_book_id])
    word_book.del_word(@word)
  end

  private
  def word_params
    params.require(:word).permit(:word, :description)
  end
end
