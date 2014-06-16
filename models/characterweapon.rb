class CharacterWeapon < ActiveRecord::Base
  belongs_to :character
  has_many :weapons

  validates :character_id, presence: true

end
