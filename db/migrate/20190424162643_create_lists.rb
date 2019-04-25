class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|

      t.string :list_name
      t.string :name1
      t.string :name2
      t.string :name3
      t.string :name4
      t.string :name5
      t.string :name6
      t.string :name7
      t.string :name8
      t.string :name9
      t.string :name10
      t.timestamps
    end
  end
end
