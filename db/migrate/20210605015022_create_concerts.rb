class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :name
      t.date :date
      t.integer :crowd
      t.belongs_to :group, foreign_key: true

      t.timestamps
    end
  end
end
