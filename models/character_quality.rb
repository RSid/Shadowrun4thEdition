class Characterquality < ActiveRecord::Base
  belongs_to :character
  belongs_to :qualities

  validates :character_id, presence: true
  validates :quality_id, presence: true

end

