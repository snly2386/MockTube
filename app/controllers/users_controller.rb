class UsersController < ApplicationController
  def create
    @user = User.create(name: params[:username], name: params[:name], email: params[:email], password: params[:password])
    redirect_to "/users/#{@user.id}"
  end

  def sign_in 
    @user = User.find_by_username(params[:username])
    if params[:password] != @user.password
      flash[:error] = "Incorrect Password"
      render '/'
    else 
      redirect_to "/users/#{@user.id}"
    end
  end

  def show
    @user = User.find(params[:id])
  end
end