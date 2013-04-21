class Customer < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone
  has_many :sales_orders
end
