class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :members
      t.date :initial_date
      t.integer :gender

      t.timestamps
    end
  end
end
