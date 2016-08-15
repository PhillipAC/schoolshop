class CreateAnnoucements < ActiveRecord::Migration
  def change
    create_table :annoucements do |t|
      t.string :title
      t.integer :user_id
      t.text :content

      t.timestamps null: false
    end
  end
end
