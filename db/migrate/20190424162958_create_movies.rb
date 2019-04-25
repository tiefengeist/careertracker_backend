class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|

      t.string :name
      t.integer :year
      t.text :summary
      t.string :poster_img
      t.timestamps
    end
  end
end
