class Quality < ActiveRecord::Base
  belongs_to :character_qualities


  validates :name, presence: true
  validates :description, presence: true

end
