class Owner < ApplicationRecord
  has_many :spaces, inverse_of: :owner
  accepts_nested_attributes_for :spaces
end
