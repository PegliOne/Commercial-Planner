class CreateOrdersProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :orders_products do |t|
      t.integer :quantity
      t.timestamps
    end
  end
end
