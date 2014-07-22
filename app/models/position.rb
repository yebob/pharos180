class Position < ActiveRecord::Base

  belongs_to :area
  belongs_to :specialization

  has_many :users
  has_many :position_skills
  has_many :skills, through: :position_skills

  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }
end
