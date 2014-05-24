class ProficiencyLevel < ActiveRecord::Base
	has_one :level
	has_one :skill
	has_one :position
end
