class User < ActiveRecord::Base
  has_many :sessions
  has_many :subjects, through: :sessions
  
end