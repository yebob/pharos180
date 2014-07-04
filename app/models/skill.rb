class Skill < ActiveRecord::Base
  belongs_to :skill_category

  has_many :skill_relevances
  has_many :specializations, through: :skill_relevances
  has_many :proficiency_levels
  has_many :levels, through: :proficiency_levels
  has_many :skill_leves

  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }
  validates :skill_category, presence: true, allow_blank: false
end
