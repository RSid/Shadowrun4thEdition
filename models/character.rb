class Character < ActiveRecord::Base
  belongs_to :user
  has_many :character_skills
  has_many :skills, through: :character_skills
  belongs_to :metatype

  validates :name, presence: true
  validates :user_id, presence: true
  validates :metatype_id, presence: true
  validates :body, presence: true
  validates :agility, presence: true
  validates  :reaction, presence: true
  validates  :strength, presence: true
  validates :charisma, presence: true
  validates  :intuition, presence: true
  validates  :logic, presence: true
  validates :willpower, presence: true
  validates  :edge, presence: true
  validates :nuyen, presence: true
  validates  :essence, presence: true
  validates :initiative_passes, presence: true

  def add_skill(skill_name)
    #check and see if skill's in db, if not add it and add it to character_skills db
    #instantiate a new characterskill instance associated with this character
    #will want to wait to convert to OO further until ActiveRecord

  end

  def delete_skill(skill_name)

  end

  def change_skill_rating(skill)

  end

  def add_quality(quality_name)
    #check and see if quality's in db, if not add it and add it to character_qualities db
    #instantiate a new characterquality instance associated with this character
  end

  def delete_quality(quality_name)

  end

  def adjust_stats_based_on_quality(quality)

  end

  def add_gear(gear_name)
    #check and see if gear's in db, if not add it and add it to character_gear db
    #instantiate a new charactergear instance associated with this character
  end

  def delete_gear(gear_name)

  end

  def change_nuyen(amount)
    #lets you adjust a character's nuyen up or down
  end

  def use_edge
    #god, this will be complicated
    #need to support both session-use and burning
  end

end

