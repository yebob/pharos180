class ProficiencyLevel < ActiveRecord::Base
	belongs_to :level
	belongs_to :skill
	belongs_to :position
end
