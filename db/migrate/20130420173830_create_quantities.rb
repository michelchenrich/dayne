class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.integer :sales_order_item_id
      t.integer :size_id
      t.integer :value

      t.timestamps
    end
  end
end
