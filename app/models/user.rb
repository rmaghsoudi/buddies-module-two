class User < ActiveRecord::Base
  has_many :study_sessions
  has_many :subjects, through: :study_sessions
  has_secure_password
  has_many :ratings

  validates :username, uniqueness: { case_sensitive: false }
  
  def full_name
    self.first_name + " " + self.last_name
  end

  def self.tutors
    self.all.select { |user| user.tutor }
  end

  def self.students
    self.all.select { |user| user.tutor == false }
  end

  def average_rating
    total = 0
    sum = 0
    self.ratings.each do |rating|
      sum += rating.value
      total += 1
    end
    if total == 0
      "No ratings yet"
    else
    "Rating: #{sum/total} with #{self.ratings.count} ratings"
    end
  end

end
