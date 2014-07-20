class SkillLevel < ActiveRecord::Base

  belongs_to :skill
  belongs_to :level

  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }

end
