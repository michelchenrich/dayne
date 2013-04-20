class SalesOrder < ActiveRecord::Base
  attr_accessible :customer, :delivery_date, :material_type_id, :salesman_id
  has_many :sales_order_items
  belongs_to :salesman
  belongs_to :material_type
end
