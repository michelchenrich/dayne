# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
shoes = MaterialType.create(name: 'Shoes')

Size.create([{name: '25', material_type: shoes},
             {name: '26', material_type: shoes},
             {name: '27', material_type: shoes},
             {name: '28', material_type: shoes},
             {name: '29', material_type: shoes},
             {name: '30', material_type: shoes},
             {name: '31', material_type: shoes},
             {name: '32', material_type: shoes},
             {name: '33', material_type: shoes},
             {name: '34', material_type: shoes},
             {name: '35', material_type: shoes},
             {name: '36', material_type: shoes},
             {name: '37', material_type: shoes},
             {name: '38', material_type: shoes},
             {name: '39', material_type: shoes},
             {name: '40', material_type: shoes},
             {name: '41', material_type: shoes},
             {name: '42', material_type: shoes},
             {name: '43', material_type: shoes},
             {name: '44', material_type: shoes},
             {name: '45', material_type: shoes}])