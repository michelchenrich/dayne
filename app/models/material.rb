class Material < ActiveRecord::Base
  attr_accessible :material_type_id, :material_type, :name
  belongs_to :material_type
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :material_type
end
