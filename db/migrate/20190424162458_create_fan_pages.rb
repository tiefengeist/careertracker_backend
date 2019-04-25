class CreateFanPages < ActiveRecord::Migration[5.2]
  def change
    create_table :fan_pages do |t|
      t.integer :user_id
      t.integer :creator_id

      t.timestamps
    end
  end
end
