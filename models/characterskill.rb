class CharacterSkill < ActiveRecord::Base

  belongs_to :character
  has_many :skills

  validates :character_id, presence: true
  validates :skill_id, presence: true
  validates :rating, presence: true
  validates :specialization, presence: true

  def roll

    rolls_array = []
    self.rating.times {rolls_array << rand(1..6)}
    rolls_array
  end


end



