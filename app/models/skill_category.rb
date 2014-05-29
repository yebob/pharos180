class SkillCategory < ActiveRecord::Base
	has_many :skills 
	validates :name, presence: true, allow_blank: false, length: { minimum: 5 }, uniqueness: true
end
