class Level < ActiveRecord::Base

  has_many :position_skills
  has_many :skill_levels

  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }

end
