class CreateSalesOrders < ActiveRecord::Migration
  def change
    create_table :sales_orders do |t|
      t.integer :customer
      t.date :delivery_date
      t.integer :salesman_id
      t.integer :material_type_id

      t.timestamps
    end
  end
end
