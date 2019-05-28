class AddDateToSession < ActiveRecord::Migration[5.2]
  def change
    add_column :study_sessions, :date, :datetime
  end
end
