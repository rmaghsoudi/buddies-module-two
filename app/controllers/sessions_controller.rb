class SessionsController < ApplicationController

  def new
  end

  # def create
  #   @user = User.find_by(username: params[:username])
  #   if @user && @user.authenticate(params[:password])
  #     session[:user_id] = @user.id
  #     redirect_to user_path(@user)
  #   else
  #     @error = "login unsuccessful"
  #     render :new
  #   end
  # end

  def create
    #first find the user
    user = User.find_by(username: params[:username])
    authenticated = user.try(:authenticate, params[:password])
    if authenticated
      @user = user
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      @error = "Username and/or password incorrect"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end


end
