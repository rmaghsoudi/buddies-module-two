class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show]

  def home
  end

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to login_path
    else
      render :new
    end
  end

  def edit
    if @user.id != session[:user_id]
    redirect_to user_path(@user)
    end
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password, :bio, :tutor, :password_confirmation)
  end

end
