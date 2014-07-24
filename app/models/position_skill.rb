class PositionSkill < ActiveRecord::Base

  belongs_to :position
  belongs_to :level
  belongs_to :skill

  validates :position, presence: true
  validates :level, presence: true
  validates :skill, presence: true
end
