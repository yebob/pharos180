class Specialization < ActiveRecord::Base
	has_many :skill_relevances
	has_many :skills, through: :skill_relevances
	has_many :positions
	belongs_to :profile

	def profile_spec_name
		spec_name = "#{profile.name} - " if profile

		return "#{spec_name}#{name}"
	end
end
