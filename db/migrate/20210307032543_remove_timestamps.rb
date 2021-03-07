class RemoveTimestamps < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :created_at
    remove_column :users, :updated_at
    remove_column :orders, :created_at
    remove_column :orders, :updated_at
    remove_column :products, :created_at
    remove_column :products, :updated_at
    remove_column :orders_products, :created_at
    remove_column :orders_products, :updated_at
    remove_column :shifts, :created_at
    remove_column :shifts, :updated_at
    remove_column :departments, :created_at
    remove_column :departments, :updated_at
  end
end
