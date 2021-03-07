class ChangeOrdersProductsToProductOrders < ActiveRecord::Migration[6.1]
  def change
    rename_table :orders_products, :product_orders
  end
end
