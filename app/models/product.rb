class Product < ApplicationRecord
  has_many :product_orders
  belongs_to :department, optional: true
end
