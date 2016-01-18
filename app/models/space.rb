class Space < ApplicationRecord
  belongs_to :owner
  has_one :beacon, inverse_of: :space
  accepts_nested_attributes_for :beacon
end
