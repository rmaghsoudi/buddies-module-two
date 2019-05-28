class User < ActiveRecord::Base
  has_many :sessions
  has_many :subjects, through: :sessions

  def full_name
    self.first_name + " " + self.last_name
  end

  def self.tutors
    self.all.select { |user| user.tutor }
  #   self.all.map do |x|
  #   if x.tutor
  #     return x.name
  #   end
  # end
end

end
