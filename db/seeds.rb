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

material_201 = Material.create(name: '201', material_type: shoes)
material_202 = Material.create(name: '202', material_type: shoes)

salesman = Salesman.create(name: 'Salesman 1', email: 'contact@salesman1.com', phone: '(55)5555-5555')

customer = Customer.create(name: 'Customer 1', email: 'contact@customer1.com', phone: '(66)6666-6666', address: 'Highway 666, on the crossroads')

sales_order = SalesOrder.create(salesman: salesman, customer: customer, delivery_date: '01/01/2013', material_type: shoes)

sales_order_item_1 = SalesOrderItem.create(sales_order: sales_order, material: material_201, description: 'Red')

Quantity.create([{sales_order_item: sales_order_item_1, size: Size.find_by_name('33'), value: 1},
                 {sales_order_item: sales_order_item_1, size: Size.find_by_name('34'), value: 2},
                 {sales_order_item: sales_order_item_1, size: Size.find_by_name('35'), value: 3},
                 {sales_order_item: sales_order_item_1, size: Size.find_by_name('36'), value: 3},
                 {sales_order_item: sales_order_item_1, size: Size.find_by_name('37'), value: 2},
                 {sales_order_item: sales_order_item_1, size: Size.find_by_name('38'), value: 1}])

sales_order_item_2 = SalesOrderItem.create(sales_order: sales_order, material: material_202, description: 'Blue')

Quantity.create([{sales_order_item: sales_order_item_2, size: Size.find_by_name('35'), value: 1},
                 {sales_order_item: sales_order_item_2, size: Size.find_by_name('36'), value: 2},
                 {sales_order_item: sales_order_item_2, size: Size.find_by_name('37'), value: 3},
                 {sales_order_item: sales_order_item_2, size: Size.find_by_name('38'), value: 3},
                 {sales_order_item: sales_order_item_2, size: Size.find_by_name('39'), value: 2},
                 {sales_order_item: sales_order_item_2, size: Size.find_by_name('40'), value: 1}])

