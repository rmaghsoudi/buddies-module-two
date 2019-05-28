class CreateStudyBuddies < ActiveRecord::Migration[5.2]
  def change
    create_table :study_buddies do |t|
      t.integer :tutor_id
      t.integer :student_id
    end
  end
end
