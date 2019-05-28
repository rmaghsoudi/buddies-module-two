class User < ActiveRecord::Base
  has_many :sessions
  has_many :subjects, through: :sessions

  def full_name
    self.first_name + " " + self.last_name
  end

end