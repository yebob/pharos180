class Level < ActiveRecord::Base
	belongs_to :proficiency_level
	validates :name, presence: true, allow_blank: false, length: { minimum: 5 }
end
