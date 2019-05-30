class RatingsController < ApplicationController

  def index
    @user = User.find(params[:id])
  end

  def new
    @user = User.find(params[:id])
    @rating = Rating.new
  end

  def create
    @user = User.find(params[:rating][:user_id])
    @rating = Rating.new(rating_params)
    if @rating.save
      redirect_to :action => :index, id: @user.id
    else
      render :new
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:value, :review, :user_id)
  end
end