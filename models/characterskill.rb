class CharacterSkill < ActiveRecord::Base

  belongs_to :character
  has_many :skills

  validates :character_id, presence: true
  validates :skill_id, presence: true
  validates :rating, presence: true



end



