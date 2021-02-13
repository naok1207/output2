class WordsController < ApplicationController
  def index
    @words = current_user.words.all
  end

  def show
    @word = current_user.words.find(params[:id])
  end

  def new
    @word = current_user.words.new
  end

  def create
    @word = current_user.words.new(word_params)
    if @word.save
      redirect_to @word
    else
      render :new
    end
  end

  def edit
    @word = current_user.words.find(params[:id])
  end

  def update
    @word = current_user.words.find(params[:id])
    if @word.update(word_params)
      redirect_to @word
    else
      render :edit
    end
  end

  def destroy
    word = current_user.words.find(params[:id])
    word.destroy!
    redirect_to words_path
  end

  private
  def word_params
    params.require(:word).permit(:word, :description)
  end
end
