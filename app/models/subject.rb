class Subject < ActiveRecord::Base
  has_many :study_sessions
  has_many :users, through: :study_sessions
end
