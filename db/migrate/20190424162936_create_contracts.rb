class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|

      t.integer :creator_id
      t.integer :user_id
      t.integer :movie_id
      t.text :film_comment
      t.timestamps
    end
  end
end
