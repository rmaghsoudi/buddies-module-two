class AddTutorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :tutor, :boolean
  end
end
