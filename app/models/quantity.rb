class Quantity < ActiveRecord::Base
  attr_accessible :sales_order_item_id, :sales_order_item, :size_id, :size, :value
  belongs_to :sales_order_item
  belongs_to :size
  validates_presence_of :value
  validates_numericality_of :value
end