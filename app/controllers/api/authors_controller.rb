class Api::AuthorsController < ApplicationController
    #index
  def index
    @authors = Author.all
    render json: @authors
  end

  #show
  def show
    @author = Author.find_by(id: params[:id])
    p @author
    render json: @author
  end


  #Create
  def create
    @author = Author.new(
      name: params[:name],
      )
    @author.save
    render json: @author
  end

  #update
  def update
    @author = Author.find_by(id: params[:id])
    @author.update(
      name: params[:name] || author.name,
    )
    render json: @author
  end

  #Destroy
  def destroy
    @author = Author.find_by(id: params[:id])
    @author.destroy
    render json: "deleted"
  end
end
