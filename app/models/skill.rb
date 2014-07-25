class Skill < ActiveRecord::Base

  belongs_to :skill_category

  has_many :position_skill
  has_many :skill_levels
  has_many :specialization_skills

  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }
  validates :skill_category, presence: true

end
