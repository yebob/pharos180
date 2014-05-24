class Specialization < ActiveRecord::Base
	has_many :skill_relevances
	has_many :skills, through: :skill_relevances    
end
