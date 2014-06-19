class CharacterWeapon < ActiveRecord::Base
  belongs_to :character
  belongs_to :weapons

  validates :character_id, presence: true
  validates :weapon_id, presence: true

end
