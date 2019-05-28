class Session < ActiveRecord::Base
  belongs_to :subject
  belongs_to :student, foreign_key: :student_id, class_name: 'User'
  belongs_to :tutor, foreign_key: :tutor_id, class_name: 'User'

end