class Skill < ActiveRecord::Base
  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }
  has_many :skill_relevances
  has_many :specializations, through: :skill_relevances  
  has_many :proficiency_levels
  has_many :levels, through: :proficiency_levels
end
