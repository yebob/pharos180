class SkillRelevance < ActiveRecord::Base
	belongs_to :skill
	belongs_to :specialization
end
