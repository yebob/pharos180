class SkillLevel < ActiveRecord::Base

  belongs_to :skill
  belongs_to :level

  validates :description, presence: true, allow_blank: false, length: { minimum: 5 }
  validates :skill, presence: true
  validates :level, presence: true

end
