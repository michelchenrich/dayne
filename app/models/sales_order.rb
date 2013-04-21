class SalesOrder < ActiveRecord::Base
  attr_accessible :customer_id, :customer, :delivery_date, :material_type_id, :material_type, :salesman_id, :salesman
  has_many :sales_order_items, dependent: :destroy
  belongs_to :customer
  belongs_to :salesman
  belongs_to :material_type

  validates_presence_of :delivery_date
  validates_presence_of :customer
  validates_presence_of :material_type

  def total_quantity
    value = 0
    sales_order_items.each do |item|
      value += item.total_quantity unless item.total_quantity.nil?
    end
    value
  end

  def used_sizes
    sizes = Array.new

    sales_order_items.each do |item|
      item.quantities.each do |quantity|
        sizes.append(quantity.size) unless quantity.size.nil?
      end
    end

    sizes.uniq
    sizes.sort_by { |size| size.name }
  end
end
