class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :material_type_id

      t.timestamps
    end
  end
end
