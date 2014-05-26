class Level < ActiveRecord::Base
	has_many :proficiency_levels
	validates :name, presence: true, allow_blank: false, length: { minimum: 5 }
end
