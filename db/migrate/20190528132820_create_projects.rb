class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :name
      t.integer :tutor_id
      t.integer :student_id
      t.integer :subject_id

    end
  end
end
