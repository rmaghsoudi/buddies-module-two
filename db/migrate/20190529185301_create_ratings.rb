class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.float :value
      t.text :review
      t.integer :user_id
    end
  end
end
