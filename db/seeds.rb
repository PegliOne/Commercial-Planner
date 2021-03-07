# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create :name => "Pamela Glickman", :email => "pamela@gmail.com", :mobile => "0410 555 196", :password => "chicken", :admin => true, :available_hours => 40
u2 = User.create :name => "Jackson Heystek", :email => "jackson@gmail.com", :mobile => "0410 196 555", :password => "chicken", :admin => true, :available_hours => 20
u3 = User.create :name => "Patricia Smith", :email => "patricia@hotmail.com", :mobile => "0414 555 555", :password => "chicken", :available_hours => 40
u4 = User.create :name => "Michael Fredkina", :email => "michael@hotmail.com", :mobile => "0414 195 550", :password => "chicken", :available_hours => 10
u5 = User.create :name => "Lubov Fredkina", :email => "lubov@hotmail.com", :mobile => "0410 695 550", :password => "chicken", :available_hours => 10
u6 = User.create :name => "William Heystek", :email => "william@gmail.com", :mobile => "0410 995 550", :password => "chicken", :available_hours => 40
u7 = User.create :name => "Rose Sexton", :email => "rose@hotmail.com", :mobile => "0410 795 557", :password => "chicken", :available_hours => 15
u8 = User.create :name => "Anna Fredkina", :email => "anna@gmail.com", :mobile => "0411 895 558", :password => "chicken", :available_hours => 40
u9 = User.create :name => "John Smith", :email => "john@gmail.com", :mobile => "0411 895 558", :password => "chicken", :available_hours => 40
u10 = User.create :name => "Jane Smith", :email => "jane@gmail.com", :mobile => "0411 895 558", :password => "chicken", :available_hours => 40
puts "#{ User.count } users"

Order.destroy_all
o1 = Order.create :date => "04-04-2021", :address => "43 Arbat Street, Moscow"
o2 = Order.create :date => "05-04-2021", :address => "61 Cosmonauts Alley, Moscow"
o3 = Order.create :date => "04-04-2021", :address => "17 Liteyny Avenue, Saint Petersburg"
o4 = Order.create :date => "05-04-2021", :address => "66 Sadovaya Street, Saint Petersburg"
o5 = Order.create :date => "06-04-2021", :address => "77 Tverskaya Street, Moscow"
puts "#{ Order.count } orders"

Product.destroy_all
p1 = Product.create :name => "Bread (by loaf)", :category => "Food", :labour_hours => 3
p2 = Product.create :name => "Apple (by kilogram)", :category => "Food", :labour_hours => 3
p3 = Product.create :name => "Potatoes (by kilogram)", :category => "Food", :labour_hours => 2
p4 = Product.create :name => "Beetroot (by kilogram)", :category => "Food", :labour_hours => 3
p5 = Product.create :name => "Minced Beef (by kilogram)", :category => "Food", :labour_hours => 4
p6 = Product.create :name => "Milk (by litre)", :category => "Drink", :labour_hours => 4
p7 = Product.create :name => "Vodka (by litre)", :category => "Drink", :labour_hours => 8
p8 = Product.create :name => "Kvass (by litre)", :category => "Drink", :labour_hours => 4
p9 = Product.create :name => "Shirts", :category => "Clothing", :labour_hours => 3
p10 = Product.create :name => "Pants", :category => "Clothing", :labour_hours => 3
p11 = Product.create :name => "Shoes (by pair)", :category => "Clothing", :labour_hours => 4
p12 = Product.create :name => "Coats", :category => "Clothing", :labour_hours => 6
p13 = Product.create :name => "Soap (by bar)", :category => "Health/Hygiene", :labour_hours => 1
p14 = Product.create :name => "Toilet Paper (by role)", :category => "Health/Hygiene", :labour_hours => 1
p15 = Product.create :name => "Medicine (by packet)", :category => "Health/Hygiene", :labour_hours => 4
p16 = Product.create :name => "Books", :category => "Entertainment", :labour_hours => 3
p17 = Product.create :name => "Cinema Tickets (by unit)", :category => "Entertainment", :labour_hours => 4
p18 = Product.create :name => "Train Tickets (by unit)", :category => "Transport", :labour_hours => 4
p19 = Product.create :name => "Bus Tickets (by unit)", :category => "Transport", :labour_hours => 2
p20 = Product.create :name => "Plane Tickets (by unit)", :category => "Transport", :labour_hours => 20
puts "#{ Product.count } products"

ProductOrder.destroy_all
product_orders = 15.times.map do
  ProductOrder.create :quantity => 2
end
puts "#{ ProductOrder.count } product orders"

Department.destroy_all
d1 = Department.create :name => "Department of Agriculture", :head_quarters => "Sochi", :email => "agriculture@soviet.org", :contact_number => "9555 6578"
d2 = Department.create :name => "Department of Food and Beverages", :head_quarters => "Saint Petersburg", :email => "food_and_beverages@soviet.org", :contact_number => "9577 5558"
d3 = Department.create :name => "Department of Consumer Goods", :head_quarters => "Moscow", :email => "consumer_goods@soviet.org", :contact_number => "9588 9555"
d4 = Department.create :name => "Ministry of Transport", :head_quarters => "Moscow", :email => "transport@soviet.org"
d5 = Department.create :name => "Ministry of Culture", :head_quarters => "Saint Petersburg", :email => "education@soviet.org"
puts "#{ Department.count } departments"

Shift.destroy_all
s1 = Shift.create :location => "Western Siberia", :role => "Harvesting", :hours => 8, :start_time => "05-04-2021 06:00:00"
s2 = Shift.create :location => "Kazakstan", :role => "Harvesting", :hours => 8, :start_time => "06-04-2021 06:00:00"
s3 = Shift.create :location => "Western Siberia", :role => "Harvesting", :hours => 8, :start_time => "07-04-2021 06:00:00"
s4 = Shift.create :location => "Kazakstan", :role => "Animal Husbandry", :hours => 8, :start_time => "07-04-2021 06:00:00"
s5 = Shift.create :location => "Moscow", :role => "Butchering", :hours => 8, :start_time => "09-04-2021 07:00:00"
s6 = Shift.create :location => "Saint Petersburg", :role => "Baking", :hours => 8, :start_time => "08-04-2021 06:00:00"
s7 = Shift.create :location => "Moscow", :role => "Factory Labour", :hours => 8, :start_time => "05-04-2021 09:00:00"
s8 = Shift.create :location => "Moscow", :role => "Factory Labour", :hours => 6, :start_time => "06-04-2021 11:00:00"
s9 = Shift.create :location => "Moscow", :role => "Factory Labour", :hours => 8, :start_time => "07-04-2021 09:00:00"
s10 = Shift.create :location => "Saint Petersburg", :role => "Factory Labour", :hours => 6, :start_time => "08-04-2021 11:00:00"
s11 = Shift.create :location => "Moscow", :role => "Train Driving", :hours => 8, :start_time => "05-04-2021 05:00:00"
s12 = Shift.create :location => "Moscow", :role => "Train Driving", :hours => 8, :start_time => "05-04-2021 13:00:00"
s13 = Shift.create :location => "Moscow", :role => "Train Driving", :hours => 6, :start_time => "06-04-2021 09:00:00"
s14 = Shift.create :location => "Moscow", :role => "Train Driving", :hours => 6, :start_time => "10-04-2021 08:00:00"
s15 = Shift.create :location => "Saint Petersburg", :role => "Bus Driving", :hours => 8, :start_time => "05-04-2021 08:00:00"
s16 = Shift.create :location => "Saint Petersburg", :role => "Bus Driving", :hours => 8, :start_time => "05-04-2021 13:00:00"
s17 = Shift.create :location => "Saint Petersburg", :role => "Bus Driving", :hours => 6, :start_time => "10-04-2021 08:00:00"
s18 = Shift.create :location => "Sochi", :role => "Piloting", :hours => 10, :start_time => "09-04-2021 06:00:00"
s19 = Shift.create :location => "Saint Petersburg", :role => "Writing", :hours => 8, :start_time => "09-04-2021 09:00:00"
s20 = Shift.create :location => "Moscow", :role => "Film Making", :hours => 10, :start_time => "05-09-2021 07:00:00"
puts "#{ Shift.count } shifts"

# Associations
puts "Users and Orders"
u1.orders << o1
u3.orders << o2
u4.orders << o3
u6.orders << o4

puts "Product Orders and Products"
p1.product_orders << product_orders[0]
p2.product_orders << product_orders[1]
p3.product_orders << product_orders[2]
p5.product_orders << product_orders[3]
p6.product_orders << product_orders[4]
p8.product_orders << product_orders[5]
p9.product_orders << product_orders[6]
p10.product_orders << product_orders[7]
p11.product_orders << product_orders[8]
p12.product_orders << product_orders[9]
p13.product_orders << product_orders[10]
p14.product_orders << product_orders[11]
p15.product_orders << product_orders[12]
p17.product_orders << product_orders[13]
p18.product_orders << product_orders[14]

puts "Orders and Product Orders"
o1.product_orders << product_orders
# o2.products << p1 << p2 << p3 << p4 << p8 << p9 << p10 << p13 << p14 << p16 << p19
# o3.products << p1 << p2 << p3 << p4 << p6 << p11 << p12 << p13 << p14 << p16
# o4.products << p1 << p2 << p3 << p5 << p6 << p7 << p9 << p11 << p13 << p14 << p15 << p16 << p17
# o5.products << p1 << p2 << p3 << p4 << p6 << p9 << p10 << p13 << p14

puts "Products and Departments"
d1.products << p2 << p3 << p4 << p6
d2.products << p1 << p5 << p7 << p8
d3.products << p9 << p10 << p11 << p12 << p13 << p14 << p15
d4.products << p18 << p19 << p20
d5.products << p16 << p17

puts "Departments and Shifts"
d1.shifts << s1 << s2 << s3 << s4
d2.shifts << s5 << s6 << s10
d3.shifts << s7 << s8 << s9
d4.shifts << s11 << s12 << s13 << s14 << s15 << s16 << s17 << s18
d5.shifts << s19 << s20

puts "Users and Shifts"
s1.users << u1 << u3
s2.users << u2
s3.users << u1 << u3
s4.users << u2
s5.users << u2
s6.users << u3
s7.users << u6
s8.users << u6 << u4
s9.users << u6
s10.users << u1
s11.users << u8
s12.users << u5
s13.users << u8
s14.users << u8
s15.users << u7
s16.users << u9
s17.users << u7
s18.users << u9
s19.users << u10
s20.users << u10
