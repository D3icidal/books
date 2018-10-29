class Api::BooksController < ApplicationController
  #index
  def index
    @books = Book.all
    render json: @books
  end

  #show
  def show
    @book = Book.find_by(id: params[:id])
    p @book
    render json: @book
  end


  #Create
  def create
    @book = Book.new(
      title: params[:title],
      author_id: params[:author_id]
      )
    @book.save
    render json: @book
  end

  #update
  def update
    @book = Book.find_by(id: params[:id])
    @book.update(
      title: params[:title] || book.title,
      author_id: params[:author_id] || book.author_id
    )
    render json: @book
  end

  #Destroy
  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy
    render json: "deleted"
  end
end
