class SalesOrder < ActiveRecord::Base
  attr_accessible :customer_id, :delivery_date, :material_type_id, :salesman_id
  has_many :sales_order_items
  belongs_to :customer
  belongs_to :salesman
  belongs_to :material_type

  validates_presence_of :delivery_date
  validates_presence_of :customer
  validates_presence_of :material_type

  def quantity
    value = 0
    sales_order_items.each do |item|
      item.quantities.each do |quantity|
        value += quantity.value
      end
    end
    value
  end
end
