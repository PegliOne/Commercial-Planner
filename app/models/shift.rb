class Shift < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :department, optional: true
end
