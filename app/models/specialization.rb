class Specialization < ActiveRecord::Base

  belongs_to :specialization_category

  has_many :specialization_skills
  has_many :specialization_weights
  has_many :positions
  has_many :skills, through: :specialization_skills

  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }

end
