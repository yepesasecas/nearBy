class Space < ApplicationRecord
  belongs_to :owner
  has_one :beacon, inverse_of: :space
  has_many :actions, inverse_of: :space
  accepts_nested_attributes_for :beacon, :actions

  scope :find_by_beacon, ->(args) { includes(:actions).joins(:beacon).where(beacons:args)}
end
