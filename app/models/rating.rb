class Rating < ActiveRecord::Base
  belongs_to :user

  def average_rating(id)
    total = 0
    sum = 0
    ratings = Rating.where(user_id: id)
    ratings.each do |rating|
      sum += rating.value
      total += 1
    end
    sum/total
  end

end