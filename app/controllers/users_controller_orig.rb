class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    puts  params[:user][:first_name]
    # @user = User.create( params.user[:frist_name]
    @user = User.create( first_name: params[:user][:first_name], last_name: params[:user][:last_name], email: params[:user][:email], password: params[:user][:password])
    redirect_to '/users'
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.create( first_name: params[:user][:first_name], last_name: params[:user][:last_name], email: params[:user][:email], password: params[:user][:password])
  end

  def update
  end

  def destroy
  end
end
