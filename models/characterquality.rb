class Characterquality < ActiveRecord::Base
  belongs_to :character
  has_many :qualities

  validates :character_id, presence: true
  validates :quality_id, presence: true

end

