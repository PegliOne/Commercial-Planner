class Department < ApplicationRecord
  has_many :products
  has_many :shifts
end
