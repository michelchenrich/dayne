class Quantity < ActiveRecord::Base
  attr_accessible :sales_order_item_id, :size_id, :value
  belongs_to :sales_order_item
  belongs_to :size
end