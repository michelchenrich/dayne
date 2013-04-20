class Material < ActiveRecord::Base
  attr_accessible :material_type_id, :name
  belongs_to :material_type
end
