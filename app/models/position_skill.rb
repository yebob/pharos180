class PositionSkill < ActiveRecord::Base

  belongs_to :position
  belongs_to :level
  belongs_to :skills

end
