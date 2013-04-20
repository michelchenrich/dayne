class CreateSalesOrderItems < ActiveRecord::Migration
  def change
    create_table :sales_order_items do |t|
      t.integer :sales_order_id
      t.integer :material_id
      t.string :description
      t.timestamps
    end
  end
end
