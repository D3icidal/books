class Api::BooksController < ApplicationController
  #index
  def index
    @books = Books.all
    render json: @books
  end

  #show
  def show
    @book = Books.find_by(id: params[:id])
    p @book
    


  #Create
  #update
  #Destroy
end
