class Position < ActiveRecord::Base

  belongs_to :area
  belongs_to :specialization
  has_many :proficiency_levels
  has_many :users
  has_many :profiles, through: :specialization

  validates :name, presence: true, allow_blank: false


end
