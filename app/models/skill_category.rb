class SkillCategory < ActiveRecord::Base

  has_many :skills
  has_many :specialization_weights

  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }

end
