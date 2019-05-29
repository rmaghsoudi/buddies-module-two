class StudySession < ActiveRecord::Base
  belongs_to :subject
  belongs_to :student, foreign_key: :student_id, class_name: 'User'
  belongs_to :tutor, foreign_key: :tutor_id, class_name: 'User'

  def upcoming?
    self.date > DateTime.now
  end

  def date_to_english
    self.date.strftime("%m/%d at %I:%M%p")
  end

end
