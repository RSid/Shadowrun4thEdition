class Skill < ActiveRecord::Base
  belongs_to :character_skills


  validates :name, presence: true

end
