class ChangeSalesOrders < ActiveRecord::Migration
  def change
    change_column :sales_orders, :customer, :integer
    rename_column :sales_orders, :customer, :customer_id
  end
end
