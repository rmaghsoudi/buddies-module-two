class User < ActiveRecord::Base
  has_many :study_sessions
  has_many :subjects, through: :study_sessions
  has_secure_password

  def full_name
    self.first_name + " " + self.last_name
  end

  def self.tutors
    self.all.select { |user| user.tutor }
  end

  def self.students
    self.all.select { |user| user.tutor == false }
  end

end
