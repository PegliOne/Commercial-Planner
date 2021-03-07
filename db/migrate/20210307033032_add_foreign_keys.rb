class AddForeignKeys < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :user_id, :integer
    add_column :orders_products, :order_id, :integer
    add_column :orders_products, :product_id, :integer
    add_column :products, :department_id, :integer
  end
end
