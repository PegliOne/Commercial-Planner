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
u4 = User.create :name => "Michael Brown", :email => "michael@hotmail.com", :mobile => "0414 195 550", :password => "chicken", :available_hours => 10
u5 = User.create :name => "Lily Brown", :email => "lubov@hotmail.com", :mobile => "0410 695 550", :password => "chicken", :available_hours => 10
u6 = User.create :name => "William Heystek", :email => "william@gmail.com", :mobile => "0410 995 550", :password => "chicken", :available_hours => 40
u7 = User.create :name => "Rose Sexton", :email => "rose@hotmail.com", :mobile => "0410 795 557", :password => "chicken", :available_hours => 15
u8 = User.create :name => "Anna Garcia", :email => "anna@gmail.com", :mobile => "0411 895 558", :password => "chicken", :available_hours => 40
u9 = User.create :name => "John Smith", :email => "john@gmail.com", :mobile => "0411 895 558", :password => "chicken", :available_hours => 40
u10 = User.create :name => "Jane Smith", :email => "jane@gmail.com", :mobile => "0411 895 558", :password => "chicken", :available_hours => 40
puts "#{ User.count } users"

Order.destroy_all
o1 = Order.create :date => "04-04-2025", :address => "43 Spencer Street, Melbourne"
o2 = Order.create :date => "05-04-2025", :address => "61 Flinders Street, Melbourn"
o3 = Order.create :date => "04-04-2025", :address => "17 George Street, Sydney"
o4 = Order.create :date => "05-04-2025", :address => "66 Oxford Street, Sydney"
o5 = Order.create :date => "06-04-2025", :address => "77 Elizabeth Street, Melbourne"
puts "#{ Order.count } orders"

Product.destroy_all
p1 = Product.create :name => "Plate", :category => "Dining", :labour_hours => 3
p2 = Product.create :name => "Bowl", :category => "Dining", :labour_hours => 3
p3 = Product.create :name => "Mug", :category => "Dining", :labour_hours => 2
p4 = Product.create :name => "Wine Glass", :category => "Dining", :labour_hours => 3
p5 = Product.create :name => "Chopping Board", :category => "Dining", :labour_hours => 4
p6 = Product.create :name => "Bath Towel", :category => "Bath", :labour_hours => 4
p7 = Product.create :name => "Hand Towl", :category => "Bath", :labour_hours => 4
p8 = Product.create :name => "Shower Mat", :category => "Bath", :labour_hours => 4
p9 = Product.create :name => "Headphones (by set)", :category => "Electrical", :labour_hours => 3
p10 = Product.create :name => "Keyboard", :category => "Electrical", :labour_hours => 4
p11 = Product.create :name => "Shirt", :category => "Clothing", :labour_hours => 3
p12 = Product.create :name => "Pants", :category => "Clothing", :labour_hours => 3
p13 = Product.create :name => "Jumper", :category => "Clothing", :labour_hours => 4
p14 = Product.create :name => "Coat", :category => "Clothing", :labour_hours => 6
p15 = Product.create :name => "Soap (by bar)", :category => "Health/Hygiene", :labour_hours => 1
p16 = Product.create :name => "Hand Sanitiser (by bottle)", :category => "Health/Hygiene", :labour_hours => 1
p17 = Product.create :name => "Panadol Tablets (by packet)", :category => "Health/Hygiene", :labour_hours => 1
p18 = Product.create :name => "Board Game", :category => "Kids", :labour_hours => 8
p19 = Product.create :name => "Plush Toy", :category => "Kids", :labour_hours => 4
p20 = Product.create :name => "Lego (by box)", :category => "Kids", :labour_hours => 10
puts "#{ Product.count } products"

ProductOrder.destroy_all
product_orders = 15.times.map do
  ProductOrder.create :quantity => 2
end
puts "#{ ProductOrder.count } product orders"

Department.destroy_all
d1 = Department.create :name => "Home Department", :email => "home@retail.com", :contact_number => "9555 6578"
d2 = Department.create :name => "Electrical Department", :email => "body@retail.com", :contact_number => "9577 5558"
d3 = Department.create :name => "Clothing Department", :email => "clothing@retail.com", :contact_number => "9588 9555"
d4 = Department.create :name => "Body Department", :email => "body@retail.com", :contact_number => "9599 5559"
d5 = Department.create :name => "Kids Department", :email => "kids@retail.com", :contact_number => "9555 1234"
puts "#{ Department.count } departments"

Shift.destroy_all
s1 = Shift.create :location => "Melbourne", :role => "Stock Filling (Dining)", :hours => 8, :start_time => "05-04-2025 06:00:00"
s2 = Shift.create :location => "Sydney", :role => "Stock Filling (Bath)", :hours => 8, :start_time => "06-04-2025 06:00:00"
s3 = Shift.create :location => "Melbourne", :role => "Customer Service (Dining)", :hours => 8, :start_time => "07-04-2025 08:00:00"
s4 = Shift.create :location => "Sydney", :role => "Customer Service (Bath)", :hours => 8, :start_time => "07-04-2025 08:00:00"
s5 = Shift.create :location => "Melbourne", :role => "Stock Filling (Electrical)", :hours => 8, :start_time => "09-04-2025 07:00:00"
s6 = Shift.create :location => "Sydney", :role => "Stock Filling (Electrical)", :hours => 8, :start_time => "08-04-2025 07:00:00"
s7 = Shift.create :location => "Melbourne", :role => "Customer Service (Electrical)", :hours => 6, :start_time => "05-04-2025 09:00:00"
s8 = Shift.create :location => "Sydney", :role => "Customer Service (Electrical)", :hours => 6, :start_time => "06-04-2025 09:00:00"
s9 = Shift.create :location => "Melbourne", :role => "Stock Filling (Clothing)", :hours => 8, :start_time => "08-04-2025 06:00:00"
s10 = Shift.create :location => "Sydney", :role => "Stock Filling (Clothing)", :hours => 8, :start_time => "08-04-2025 06:00:00"
s11 = Shift.create :location => "Melbourne", :role => "Customer Service (Clothing)", :hours => 6, :start_time => "05-04-2025 13:00:00"
s12 = Shift.create :location => "Sydney", :role => "Customer Service (Clothing)", :hours => 6, :start_time => "05-04-2025 13:00:00"
s13 = Shift.create :location => "Melbourne", :role => "Stock Filling (Body)", :hours => 8, :start_time => "06-04-2025 07:00:00"
s14 = Shift.create :location => "Sydney", :role => "Stock Filling (Body)", :hours => 8, :start_time => "10-04-2025 07:00:00"
s15 = Shift.create :location => "Melbourne", :role => "Customer Service (Body)", :hours => 6, :start_time => "05-04-2025 13:00:00"
s16 = Shift.create :location => "Sydney", :role => "Customer Service (Body)", :hours => 6, :start_time => "05-04-2025 13:00:00"
s17 = Shift.create :location => "Melbourne", :role => "Stock Filling (Kids)", :hours => 8, :start_time => "10-04-2025 06:00:00"
s18 = Shift.create :location => "Sydney", :role => "Stock Filling (Kids)", :hours => 8, :start_time => "09-04-2025 06:00:00"
s19 = Shift.create :location => "Melbourne", :role => "Customer Service (Kids)", :hours => 5, :start_time => "09-04-2025 15:00:00"
s20 = Shift.create :location => "Sydney", :role => "Customer Service (Kids)", :hours => 5, :start_time => "09-04-2025 15:00:00"
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
# Only one order will include products by default
o1.product_orders << product_orders

puts "Products and Departments"
d1.products << p1 << p2 << p3 << p4 << p5 << p6 << p7 << p8
d2.products << p9 << p10
d3.products << p11 << p12 << p13 << p14
d4.products << p15 << p16 << p17
d5.products << p18 << p19 << p20

puts "Departments and Shifts"
d1.shifts << s1 << s2 << s3 << s4
d2.shifts << s5 << s6 << s7 << s8
d3.shifts << s9 << s10 << s11 << s12
d4.shifts << s13 << s14 << s15 << s16
d5.shifts << s17 << s18 << s19 << s20

puts "Users and Shifts"
s1.users << u1 << u3
s2.users << u2
s3.users << u1 << u3
s4.users << u2
s5.users << u3
s6.users << u2
s7.users << u10
s8.users << u9 << u4
s9.users << u1
s10.users << u6
s11.users << u8
s12.users << u5
s13.users << u8
s14.users << u9
s15.users << u7
s16.users << u9
s17.users << u7
s18.users << u9
s19.users << u10
s20.users << u6
