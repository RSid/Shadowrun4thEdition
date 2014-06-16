class Weapon < ActiveRecord::Base
  belongs_to :character_weapons
  belongs_to :character, through: :character_weapons


  validates :name, presence: true
  validates :damage, presence: true
  validates :damage_type, presence: true
  validates :melee, presence: true

end
