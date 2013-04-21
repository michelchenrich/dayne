class SalesOrderItem < ActiveRecord::Base
  attr_accessible :sales_order_id, :sales_order, :material_id, :material, :description, :quantities_attributes
  belongs_to :sales_order
  belongs_to :material
  has_many :quantities, dependent: :destroy
  accepts_nested_attributes_for :quantities, reject_if: lambda { |quantity| quantity['size_id'].blank? or quantity['value'].blank? }, allow_destroy: true

  def total_quantity
    value = 0
    quantities.each do |quantity|
      value += quantity.value
    end
    value
  end

  def possible_materials
    Material.find_all_by_material_type_id(sales_order.material_type_id)
  end

  def possible_sizes
    Size.find_all_by_material_type_id(sales_order.material_type_id)
  end
end