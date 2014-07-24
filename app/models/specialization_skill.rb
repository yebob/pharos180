class SpecializationSkill < ActiveRecord::Base

  belongs_to :skill
  belongs_to :specialization
  
  validates :specialization, presence: true
  validates :skill, presence: true

end
