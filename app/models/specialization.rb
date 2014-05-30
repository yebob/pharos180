class Specialization < ActiveRecord::Base
	has_many :skill_relevances
	has_many :skills, through: :skill_relevances
	has_many :positions
	belongs_to :profile

	def profile_spec_name
		"#{profile.name} - #{name}"
	end
end
