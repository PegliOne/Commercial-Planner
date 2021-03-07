class User < ApplicationRecord
  has_and_belongs_to_many :shifts
  has_many :orders
  has_secure_password
end
