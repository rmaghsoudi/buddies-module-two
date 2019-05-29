class RatingsController < ApplicationController

  def index
    @ratings = Rating.where(user_id: params[:id])
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      redirect_to ratings_path
    else
      render :new
    end
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def update
    @rating = Rating.find(params[:id])
    if @rating.update(rating_params)
      redirect_to ratings_path
    else
      render :edit
    end
  end

  private

  def rating_params
    params_require(:rating).permit(:value, :review, :user_id)
  end
end