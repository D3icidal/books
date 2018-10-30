class Api::UsersController < ApplicationController
  #   #index
  # def index
  #   @users = User.all
  #   render json: @users
  # end

  # #show
  # def show
  #   @user = User.find_by(id: params[:id])
  #   p @user
  #   render json: @user
  # end


  #Create
  def create
    @user = User.new(
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  # #update
  # def update
  #   @user = User.find_by(id: params[:id])
  #   @user.update(
  #     email: params[:email] || user.email,
  #     author_id: params[:author_id] || user.author_id
  #   )
  #   render json: @user
  # end

  # #Destroy
  # def destroy
  #   @user = User.find_by(id: params[:id])
  #   @user.destroy
  #   render json: "deleted"
  # end
end
