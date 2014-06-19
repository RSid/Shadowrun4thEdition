class CharacterGear < ActiveRecord::Base
  belongs_to :character
  belongs_to :gear

  validates :character_id, presence: true
  validates :gear_id, presence: true

end
