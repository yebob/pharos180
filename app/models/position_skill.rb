class PositionSkill < ActiveRecord::Base

  belongs_to :position
  belongs_to :level

  has_many :skills

end
