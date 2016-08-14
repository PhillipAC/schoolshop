class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :customer
      t.date :day
      t.integer :section_id
      t.integer :teacher_id

      t.timestamps null: false
    end
  end
end
