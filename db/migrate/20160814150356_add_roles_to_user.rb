class AddRolesToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :worker, :boolean
  end
end
