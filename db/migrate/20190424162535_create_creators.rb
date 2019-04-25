class CreateCreators < ActiveRecord::Migration[5.2]
  def change
    create_table :creators do |t|
      t.string :name
      t.string :specialty
      t.datetime :birthday
      t.datetime :deathday
      t.text :bio
      t.integer :avg_rating
      t.integer :user_rating
      t.string :img
      t.text :user_comment
      t.timestamps
    end
  end
end
