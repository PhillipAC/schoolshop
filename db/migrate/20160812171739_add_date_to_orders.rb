class AddDateToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :orderDate, :dateTime
  end
end
