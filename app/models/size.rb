class Size < ActiveRecord::Base
  attr_accessible :name, :material_type_id, :material_type
  belongs_to :material_type
end
