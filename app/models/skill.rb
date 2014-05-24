class Skill < ActiveRecord::Base
  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }
  has_many :skill_relevances
  has_many :specializations, through: :skill_relevances  
  belongs_to :proficiency_level
end
