class AddDayToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :day, :date
  end
end
