class Beacon < ApplicationRecord
  before_validation :generate_key

  belongs_to :space

  validates :key, uniqueness: true

  def generate_key
    self.key = "#{uuid}:#{major}:#{minor}"
  end
end
