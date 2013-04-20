class SalesOrderItem < ActiveRecord::Base
  attr_accessible :sales_order_id, :material_id, :description
  belongs_to :sales_order
  belongs_to :material
  has_many :quantities
end